function Invoke-SpectreCommandWithStatus {
    param (
        [scriptblock]
        $ScriptBlock,

        [ValidateSpectrespinner()]
        [ArgumentCompletionsSpectrespinners()]
        $Spinner,

        [string]
        $Title,

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString()
    )
    [Spectre.Console.AnsiConsole]::Status().Start($Title, {
        param (
            $ctx
        )
        $ctx.Spinner = [Spectre.Console.Spinner+Known]::$Spinner
        $ctx.SpinnerStyle = [Spectre.Console.Style]::new([Spectre.Console.Color]::$Color)
        & $ScriptBlock
    })
}