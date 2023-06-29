Import-Module 'C:\gh\PwshSpectreConsole\PwshSpectreConsole\PwshSpectreConsole.psd1' -Verbose -Force
[Spectre.Console.AnsiConsole]::MarkupLine('[dim]Dim[/] text');
[Spectre.Console.AnsiConsole]::MarkupLine('[bold]Bold[/] text');
[Spectre.Console.AnsiConsole]::MarkupLine('[italic]Italic[/] text');
[Spectre.Console.AnsiConsole]::MarkupLine('[underline]Underline[/] text');
[Spectre.Console.AnsiConsole]::MarkupLine('[red on blue]Colored[/] text');
[Spectre.Console.AnsiConsole]::MarkupLine('[invert red on blue]Inverted[/] text');
[Spectre.Console.AnsiConsole]::MarkupLine('[conceal]Hidden[/] text');
[Spectre.Console.AnsiConsole]::MarkupLine('[slowblink]Opening[/] shortly');
[Spectre.Console.AnsiConsole]::MarkupLine('[rapidblink]Closing[/] shortly');
[Spectre.Console.AnsiConsole]::MarkupLine('[link=https://github.com/SpicyCoder]Github[/] profile');


Invoke-SpectreCommandWithStatus -Spinner Aesthetic -Title 'Showing a spinner...' -ScriptBlock {
    # Write updates tot the host using Write-SpectreHost
    Start-Sleep -Seconds 1
    Write-SpectreHost '[grey]LOG:[/] Doing some work'
    Start-Sleep -Seconds 1
    Write-SpectreHost '[grey]LOG:[/] Doing some more work'
    Start-Sleep -Seconds 1
    Write-SpectreHost '[grey]LOG:[/] Done'
    Start-Sleep -Seconds 1
}




<#
:anchor:
:blue_circle:
:classical_building:
:old_key:
:open_file_folder:
:pushpin:
:rainbow:
:rocket:
:robot:
:swan:
:telephone:
:telephone_receiver:

#>


"$($PSStyle.Foreground.FromRgb(145,145,145))Log: $($PSStyle.reset) My text is here yes"