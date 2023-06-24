---
external help file: PwshSpectreConsole-help.xml
Module Name: PwshSpectreConsole
online version:
schema: 2.0.0
---

# Format-SpectreTree

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Format-SpectreTree [[-Data] <Hashtable>] [[-Border] <String>] [[-Color] <String>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\>
@{
    Label = "Root"
    Children = @(
        @{
            Label = "First Child"
            Children = @(
                @{ Label = "With"; Children = @() },
                @{ Label = "Loads"; Children = @() },
                @{ Label = "More"; Children = @() },
                @{ Label = "Nested"; Children = @( @{ Label = "Children"; Children = @() } ) }
            )
        },
        @{ Label = "Second Child"; Children = @() }
    )
} | Format-SpectreTree -color yellow
```

{{ Add example description here }}

## PARAMETERS

### -Border
{{ Fill Border Description }}

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

### -Color
{{ Fill Color Description }}

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

### -Data
{{ Fill Data Description }}

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Collections.Hashtable

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
