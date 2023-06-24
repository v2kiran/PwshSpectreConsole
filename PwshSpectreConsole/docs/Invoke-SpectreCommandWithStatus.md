---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Invoke-SpectreCommandWithStatus

## SYNOPSIS
Show status using an animated spinner and markup text

## SYNTAX

```
Invoke-SpectreCommandWithStatus [[-ScriptBlock] <ScriptBlock>] [[-Spinner] <Object>] [[-Title] <String>]
 [[-Color] <String>] [<CommonParameters>]
```

## DESCRIPTION
Show status using an animated spinner and markup text

## EXAMPLES

### Example 1
```powershell
PS C:\>
Invoke-SpectreCommandWithStatus -Spinner Dots2 -Title "Showing a spinner..." -ScriptBlock {
    # Write updates to the host using Write-SpectreHost
    Start-Sleep -Seconds 1
    Write-SpectreHost "[grey]LOG:[/] Doing some work"
    Start-Sleep -Seconds 1
    Write-SpectreHost "[grey]LOG:[/] Doing some more work"
    Start-Sleep -Seconds 1
    Write-SpectreHost "[grey]LOG:[/] Done"
    Start-Sleep -Seconds 1
}
```


## PARAMETERS

### -Color
color of the title

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
scriptblock which will include the data

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Spinner
specify the spinner.
https://spectreconsole.net/appendix/spinners

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
Title for the status

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
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
