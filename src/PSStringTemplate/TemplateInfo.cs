﻿using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text.RegularExpressions;
using Antlr.Runtime;
using Antlr4.StringTemplate;

namespace PSStringTemplate
{
    /// <summary>
    /// Displays <see cref="Template"/> information in a simpler format for use in PowerShell.
    /// </summary>
    public class TemplateInfo
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TemplateInfo"/> class.
        /// </summary>
        /// <param name="templateInstance">The internal <see cref="Template"/> object.</param>
        /// <param name="groupInfo">The group the template belongs to.</param>
        internal TemplateInfo(Template templateInstance, TemplateGroupInfo groupInfo)
        {
            Instance = templateInstance;
            Group = groupInfo;
        }

        /// <summary>
        /// Gets the parameters defined in the wrapped <see cref="Template"/>.
        /// </summary>
        public IEnumerable<string> Parameters
        {
            get
            {
                var tokens = this.Instance.impl.Tokens as BufferedTokenStream;
                return new ReadOnlyCollection<string>(
                    tokens
                        ?.GetTokens()
                        .Where(t => t.Type == 25)
                        .Select(t => t.Text)
                        .ToList()
                    ?? new List<string>());
            }
        }

        /// <summary>
        /// Gets the name of the wrapped <see cref="Template"/>.
        /// </summary>
        public string Name => Regex.Replace(Instance.Name, @"^/", string.Empty);

        /// <summary>
        /// Gets the raw <see cref="Template"/> source string.
        /// </summary>
        public string TemplateSource => Instance.impl.TemplateSource;

        /// <summary>
        /// Gets the <see cref="TemplateGroup"/> this template belongs to wrapped in a
        /// <see cref="TemplateGroupInfo"/> object.
        /// </summary>
        public TemplateGroupInfo Group { get; }

        /// <summary>
        /// Gets the base <see cref="Template"/> object.
        /// </summary>
        internal Template Instance { get; private set; }

        /// <summary>
        /// Recompile the wrapped <see cref="Template"/> to clear arguments.
        /// </summary>
        internal void ResetInstance()
        {
            var newTemplate = Group.Instance.GetInstanceOf(Name);
            Instance = newTemplate;
        }
    }
}
