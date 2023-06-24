function Write-SpectreRule {
    [Alias('sprule')]
    [cmdletbinding()]
    param (
        [Parameter(Mandatory,Position=0, ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [string]
        $Title,

        [ValidateSet('Left','Right','Center')]
        [string]
        $Alignment = "Center",

        [Parameter(Position=1, ValueFromPipelineByPropertyName)]
        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString(),

        [Parameter(Position=2, ValueFromPipelineByPropertyName)]
        [ValidateSpectreBorder()]
        [ArgumentCompletionsSpectreBorders()]
        [string]
        $Border = "Heavy"


    )
    $rule = [Spectre.Console.Rule]::new("[$($Color)]$Title[/]")
    $rule.Justification = [Spectre.Console.Justify]::$Alignment
    $rule.Border = [Spectre.Console.BoxBorder]::$Border


    [Spectre.Console.AnsiConsole]::Write($rule)
}