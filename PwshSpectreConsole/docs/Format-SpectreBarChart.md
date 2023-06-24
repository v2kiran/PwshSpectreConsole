---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Format-SpectreBarChart

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Format-SpectreBarChart [[-Data] <Array>] [[-Title] <Object>] [[-Width] <Object>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
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
$data | Format-SpectreBarChart -Title "My bar chart" -Width 35
```



## PARAMETERS

### -Data
{{ Fill Data Description }}

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

### -Title
{{ Fill Title Description }}

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

### -Width
{{ Fill Width Description }}

```yaml
Type: Object
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

### System.Array

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
