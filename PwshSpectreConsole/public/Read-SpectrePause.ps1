function Read-SpectrePause {
    param (
        [string]
        $Message = "[$script:DefaultValueColor]Press [$script:AccentColor]<enter>[/] to continue[/]",

        [switch]
        $NoNewline
    )

    $position = $Host.UI.RawUI.CursorPosition
    if(!$NoNewline) {
        Write-Host ""
    }
    Write-SpectreHost $Message -NoNewline
    Read-Host
    $endPosition = $Host.UI.RawUI.CursorPosition
    if($endPosition -eq $position) {
        # Reached the end of the window
        [Console]::SetCursorPosition($position.X, $position.Y - 2)
        Write-Host (" " * $Message.Length)
        [Console]::SetCursorPosition($position.X, $position.Y - 2)
    } else {
        [Console]::SetCursorPosition($position.X, $position.Y)
        Write-Host (" " * $Message.Length)
        [Console]::SetCursorPosition($position.X, $position.Y)
    }
}