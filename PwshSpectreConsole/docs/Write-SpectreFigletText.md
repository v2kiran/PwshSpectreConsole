---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Write-SpectreFigletText

## SYNOPSIS
write a figlet to the console

## SYNTAX

```
Write-SpectreFigletText [[-Text] <String>] [[-Alignment] <String>] [[-Color] <String>] [<CommonParameters>]
```

## DESCRIPTION
write a figlet to the console

## EXAMPLES

### Example 1
```powershell
PS C:\>
Write-SpectreFigletText "Pwsh + Spectre!" -Alignment Center -Color Aquamarine3
"Pwsh + Spectre!" | Write-SpectreFigletText
```



## PARAMETERS

### -Alignment
Alignment for the figlet

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
Color of the figlet

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

### -Text
Figlet text

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
