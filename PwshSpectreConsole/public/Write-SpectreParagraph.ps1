function Write-SpectreParagraph {
    param (
        [string]
        $Text = "This is a sample paragraph! Provide some text to the command to write your own. This function writes a body of text without splitting a word across multiple lines."
    )
    $windowWidth = $Host.UI.RawUI.WindowSize.Width - 1
    $textWithLineBreaks = (Select-String -Input $Text -Pattern ".{1,$windowWidth}(\s|$)" -AllMatches).Matches.Value
    $textWithLineBreaks | Foreach-Object {
        Write-Host $_
    }
}