function Write-SpectreRule {
    param (
        [string] $Title,

        [ValidateSet('Left','Right','Center')]
        [string]
        $Alignment = "Left",

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString()
    )
    $rule = [Spectre.Console.Rule]::new("[$($Color)]$Title[/]")
    $rule.Justification = [Spectre.Console.Justify]::$Alignment
    [Spectre.Console.AnsiConsole]::Write($rule)
}