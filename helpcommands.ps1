
cd C:\gh\PwshSpectreConsole\PwshSpectreConsole
Update-MarkdownHelp -Path docs -Verbose
New-ExternalHelp -Path ".\docs" -OutputPath "en-US" -Force