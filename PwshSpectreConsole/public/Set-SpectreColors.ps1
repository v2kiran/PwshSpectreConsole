function Set-SpectreColors {
    param (
        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $AccentColor = "Blue",

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $DefaultValueColor = "Grey"
    )
    $script:AccentColor = [Spectre.Console.Color]::$AccentColor
    $script:DefaultValueColor = [Spectre.Console.Color]::$DefaultValueColor
}