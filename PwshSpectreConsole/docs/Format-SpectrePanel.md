---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Format-SpectrePanel

## SYNOPSIS
Create a console panel

## SYNTAX

```
Format-SpectrePanel [[-Data] <String>] [[-Title] <String>] [[-Align] <String>] [[-Border] <String>] [-Expand]
 [[-Color] <String>] [<CommonParameters>]
```

## DESCRIPTION
Create a console panel


## EXAMPLES

### Example 1
```powershell
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

for emojis check here: https://spectreconsole.net/appendix/emojis

## PARAMETERS

### -Align
Alignment for the panel title. centered by default.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Left, Right, Center

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Border
Border style for the panel

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

### -Color
Color of the panel border

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Data
Data inside the panel

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Expand
Toggle that controls whether the panel expands to the full width of the current console or not.

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

### -Title
Optional Title of the panel

```yaml
Type: String
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

### System.String

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
