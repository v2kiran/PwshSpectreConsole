---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Format-SpectreBarChart

## SYNOPSIS

Create a console bar chart

## SYNTAX

### __AllParameterSets

```
Format-SpectreBarChart [[-Data <Array>]] [[-Title <Object>]] [[-Width <Object>]] [<CommonParameters>]
```

## DESCRIPTION

Create a console bar chart

## EXAMPLES

### Example 1: Example 1

```
PS C:\>
 $data = @(
     @{
         Label = "Apple"
         Value = 12
         Color = 'Green'
     },
     @{
         Label = "Orange"
         Value = 54
         Color = 'Orange1'
     },
     @{
         Label = "Strawberry"
         Value = 51
         Color = 'Red'
     },
     @{
         Label = "Banana"
         Value = 33
         Color = 'purple'
     }
 )
$data | Format-SpectreBarChart -Title "the bar chart" -Width 35
```

{{ Add example description here }}

## PARAMETERS

### -Data

{{ Fill Data Description }}

```yaml
Type: Array
Parameter Sets: (All)
Aliases:
Accepted values:

Required: True (None) False (All)
Position: 0
Default value:
Accept pipeline input: True
Accept wildcard characters: False
DontShow: False
```

### -Title

{{ Fill Title Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:
Accepted values:

Required: True (None) False (All)
Position: 1
Default value:
Accept pipeline input: False
Accept wildcard characters: False
DontShow: False
```

### -Width

{{ Fill Width Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:
Accepted values:

Required: True (None) False (All)
Position: 2
Default value:
Accept pipeline input: False
Accept wildcard characters: False
DontShow: False
```


### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None



## OUTPUTS

### System.Object



## NOTES

{{ Fill in the Notes }}

## RELATED LINKS

Fill Related Links Here
