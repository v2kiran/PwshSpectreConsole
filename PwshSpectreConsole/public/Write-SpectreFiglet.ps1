function Write-SpectreFigletText {
    [Alias('figlet')]
    [cmdletbinding()]
    param (
        [Parameter(Mandatory,Position=0,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [string]
        $Text,

        [ValidateSet('Left','Right','Center')]
        [string]
        $Alignment = "Center",

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString()
    )
    $figletText = [Spectre.Console.FigletText]::new($Text)
    $figletText.Justification =  [Spectre.Console.Justify]::$Alignment
    $figletText.Color = [Spectre.Console.Color]::$Color
    [Spectre.Console.AnsiConsole]::Write($figletText)
}