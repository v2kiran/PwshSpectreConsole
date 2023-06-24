---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Write-SpectreRule

## SYNOPSIS
Write a horizontal line with some text to the console

## SYNTAX

```
Write-SpectreRule [[-Title] <String>] [[-Alignment] <String>] [[-Color] <String>] [<CommonParameters>]
```

## DESCRIPTION
Write a horizontal line with some text to the console


## EXAMPLES

### Example 1
```powershell
PS C:\> Write-SpectreRule -Title "[purple]hello world[/]"
PS C:\> Write-SpectreRule -Title "hello world" -color purple
PS C:\> Write-SpectreRule -Title "hello world" -color purple -Border Ascii


```



## PARAMETERS

### -Alignment
Alignment of the title

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Left, Right, Center

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Color
Title color

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

### -Title
Title text

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
