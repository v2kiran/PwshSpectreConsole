function Invoke-SpectrePromptAsync {
    param (
        $Prompt
    )
    $cts = [System.Threading.CancellationTokenSource]::new()
    try {
        $task = $Prompt.ShowAsync([Spectre.Console.AnsiConsole]::Console, $cts.Token)
        while (-not $task.AsyncWaitHandle.WaitOne(200)) {
            # Waiting for the async task this way allows ctrl-c interrupts to continue to work within the single-threaded PowerShell world
        }
        return $task.GetAwaiter().GetResult()
    } finally {
        $cts.Cancel()
        $task.Dispose()
    }
}