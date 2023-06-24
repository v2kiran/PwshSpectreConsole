---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Format-SpectreBreakdownChart

## SYNOPSIS
Create a console breakdown chart

## SYNTAX

```
Format-SpectreBreakdownChart [[-Data] <Array>] [[-Width] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Create a console breakdown chart

## EXAMPLES

### Example 1
```powershell
PS C:\>
$Data = @(
     @{
         Label = "Apple"
         Value = 12
         Color = 'Green'
     },
     @{
         Label = "Strawberry"
         Value = 15
         Color = 'Red'
     },
     @{
         Label = "Orange"
         Value = 54
         Color = 'Orange1'
     },
     @{
         Label = "Plum"
         Value = 75
         Color = 'Fuchsia'
     }
 )
 $Data | Format-SpectreBreakdownChart -Width 75
```

## PARAMETERS

### -Data
The data for the bar chart in the formof an array of hashtables


```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Width
optional
By default the chart will span the width of your current console but you may set it to a custom value.


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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Array

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
