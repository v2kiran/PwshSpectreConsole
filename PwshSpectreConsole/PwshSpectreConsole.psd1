@{
    ModuleVersion      = '0.2.2'
    GUID               = '8c5ca00d-7f0f-4179-98bf-bdaebceaebc0'
    Author             = 'Shaun Lawrie'
    CompanyName        = 'Shaun Lawrie'
    Copyright          = '(c) Shaun Lawrie. All rights reserved.'
    Description        = 'A convenient PowerShell wrapper for Spectre.Console'
    PowerShellVersion  = '7.0'
    RootModule         = 'PwshSpectreConsole'
    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies = 'lib\Spectre.Console.dll','lib\SixLabors.ImageSharp.dll','lib\Spectre.Console.ImageSharp.dll','lib\Posh.Spectre.Console.dll'
    FunctionsToExport  = '*'
    CmdletsToExport    = '*'
    VariablesToExport  = '*'
    AliasesToExport    = '*'
    PrivateData        = @{
        PSData = @{
            Tags       = @('Windows', 'Linux')
            LicenseUri = 'https://github.com/ShaunLawrie/PwshSpectreConsole/blob/main/LICENSE.md'
            ProjectUri = 'https://github.com/ShaunLawrie/PwshSpectreConsole'
            IconUri    = 'https://shaunlawrie.com/images/pwshspectreconsole.png'
        }
    }
}