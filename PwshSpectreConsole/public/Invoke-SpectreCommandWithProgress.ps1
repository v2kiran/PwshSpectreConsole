function Invoke-SpectreCommandWithProgress {
    [Alias('spprogress')]
    [cmdletbinding()]
    param (
        [Parameter(Mandatory,Position=0, ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [scriptblock]
        $ScriptBlock
    )
    [Spectre.Console.AnsiConsole]::Progress().Start({
        param (
            $ctx
        )
        & $ScriptBlock $ctx
    })
}