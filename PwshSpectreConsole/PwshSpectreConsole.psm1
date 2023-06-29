using module "private/Attributes.psm1"
using namespace Spectre.Console

$script:AccentColor = [Spectre.Console.Color]::Blue
$script:DefaultValueColor = [Spectre.Console.Color]::Grey

#setting console encoding to utf8
# this si needed to display some spectre console features
[console]::InputEncoding = [console]::OutputEncoding = [System.Text.UTF8Encoding]::new()


foreach ($directory in @('private', 'public')) {
    Get-ChildItem -Path "$PSScriptRoot\$directory\*.ps1" | ForEach-Object {
        . $_.FullName
    }
}