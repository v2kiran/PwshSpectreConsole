function Invoke-SpectreCommandWithProgress {
    param (
        [scriptblock] $ScriptBlock
    )
    [Spectre.Console.AnsiConsole]::Progress().Start({
        param (
            $ctx
        )
        & $ScriptBlock $ctx
    })
}