---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Format-SpectrePanel

## SYNOPSIS

{{ Fill in the Synopsis }}

## SYNTAX

### __AllParameterSets

```
Format-SpectrePanel [[-Data <String>]] [[-Title <String>]] [[-Align <String>]] [[-Border <String>]] [[-Color <String>]] [-Expand] [<CommonParameters>]
```

## DESCRIPTION

{{ Fill in the Description }}

## EXAMPLES

### Example 1: Example 1

```
PS C:\>
$message = "Hi $name, nice to meet you :waving_hand:`n"
$message += "Your favourite food is $food :fork_and_knife:`n"
$message += "And your favourite colors are:`n"
$colors = 'yellow','green','purple'
foreach($color in $colors)
{
    $message += " - [$color]$color[/]`n"
}
$message += "Nice! :rainbow:"
$message | Format-SpectrePanel -Title "My Panel" -Border Double -Color Yellow1
```

{{ Add example description here }}

## PARAMETERS

### -Align

{{ Fill Align Description }}

```yaml
Type: String
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

### -Border

{{ Fill Border Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values:

Required: True (None) False (All)
Position: 3
Default value:
Accept pipeline input: False
Accept wildcard characters: False
DontShow: False
```

### -Color

{{ Fill Color Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values:

Required: True (None) False (All)
Position: 4
Default value:
Accept pipeline input: False
Accept wildcard characters: False
DontShow: False
```

### -Data

{{ Fill Data Description }}

```yaml
Type: String
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

### -Expand

{{ Fill Expand Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:
Accepted values:

Required: True (None) False (All)
Position: Named
Default value:
Accept pipeline input: False
Accept wildcard characters: False
DontShow: False
```

### -Title

{{ Fill Title Description }}

```yaml
Type: String
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