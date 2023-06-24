function Write-SpectreFigletText {
    param (
        [string]
        $Text = "Hello Spectre!",

        [ValidateSet('Left','Right','Center')]
        [string]
        $Alignment = "Left",

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString()
    )
    $figletText = [Spectre.Console.FigletText]::new($Text)
    $figletText.Justification = switch($Alignment) {
        "Left" { [Spectre.Console.Justify]::Left }
        "Right" { [Spectre.Console.Justify]::Right }
        "Centered" { [Spectre.Console.Justify]::Center }
        default { Write-Error "Invalid alignment $Alignment" }
    }
    $figletText.Color = [Spectre.Console.Color]::$Color
    [Spectre.Console.AnsiConsole]::Write($figletText)
}