---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Write-SpectreHost

## SYNOPSIS
Write a message to the console

## SYNTAX

```
Write-SpectreHost [[-Message] <String>] [-NoNewline] [<CommonParameters>]
```

## DESCRIPTION
Write a message to the console

## EXAMPLES

### Example 1
```powershell
PS C:\>
Write-SpectreHost "[grey]LOG:[/] Doing some work"
Write-SpectreHost "[dim]Dim[/] text"
Write-SpectreHost "[bold]Bold[/] text"
Write-SpectreHost "[italic]Italic[/] text"
Write-SpectreHost "[underline]Underline[/] text"
Write-SpectreHost "[red on blue]Colored[/] text"
Write-SpectreHost "[invert red on blue]Inverted[/] text"
Write-SpectreHost "[conceal]Hidden[/] text"
Write-SpectreHost "[slowblink]Opening[/] shortly"
Write-SpectreHost "[rapidblink]Closing[/] shortly"
Write-SpectreHost "[link=https://github.com/SpicyCoder]Github[/] profile"
"[blue]something[/]" | Write-SpectreHost

```

the message format is as follows "[color]message[/]"

## PARAMETERS

### -Message
The message to tbe written to the console

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoNewline
no newline

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
