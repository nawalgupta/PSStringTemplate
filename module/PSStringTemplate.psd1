@{

# Script module or binary module file associated with this manifest.
ModuleToProcess = '.\PSStringTemplate.psm1'

# Version number of this module.
ModuleVersion = '0.2.0'

# ID used to uniquely identify this module
GUID = 'f188d0cf-291f-41a1-ae0e-c770d980cf6e'

# Author of this module
Author = 'Patrick Meinecke'

# Copyright statement for this module
Copyright = '(c) 2017 Patrick Meinecke. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Create and render templates using the StringTemplate template engine.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Minimum version of Microsoft .NET Framework required by this module
DotNetFrameworkVersion = '4.5'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
CLRVersion = '4.0'

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'PSStringTemplate.format.ps1xml'

# Functions to export from this module
FunctionsToExport = @()

# Cmdlets to export from this module
CmdletsToExport = 'New-StringTemplateGroup', 'Invoke-StringTemplate'

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module
AliasesToExport = @()

# List of all files packaged with this module
FileList = 'en-US/PSStringTemplate.dll-Help.xml',
           'bin/Desktop/Antlr4.StringTemplate.dll',
           'bin/Desktop/PSStringTemplate.dll',
           'bin/Desktop/Antlr3.Runtime.dll',
           'bin/Core/Antlr4.StringTemplate.dll',
           'bin/Core/PSStringTemplate.dll',
           'bin/Core/Antlr3.Runtime.dll',
           'PSStringTemplate.format.ps1xml',
           'PSStringTemplate.psd1',
           'PSStringTemplate.psm1'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('CodeGeneration', 'Generation', 'Template', 'String')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/SeeminglyScience/PSStringTemplate/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/SeeminglyScience/PSStringTemplate'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = @'
- Add template parameter and property binding for static properties
- Enable format options for DateTime template parameters
'@

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

}
