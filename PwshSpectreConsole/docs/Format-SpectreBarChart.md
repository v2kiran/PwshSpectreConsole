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

```
Format-SpectreBarChart [[-Data] <Array>] [[-Title] <Object>] [[-Width] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Create a console bar chart

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

### -Title
Optional title of the bar chart


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
Optional.
By default the chart will span the width of your current console but you may set it to a custom value.

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
 list of colors
 
Aqua
Aquamarine1
Aquamarine1_1
Aquamarine3
Black
Blue
Blue1
Blue3
Blue3_1
BlueViolet
CadetBlue
CadetBlue_1
Chartreuse1
Chartreuse2
Chartreuse2_1
Chartreuse3
Chartreuse3_1
Chartreuse4
CornflowerBlue
Cornsilk1
Cyan1
Cyan2
Cyan3
DarkBlue
DarkCyan
DarkGoldenrod
DarkGreen
DarkKhaki
DarkMagenta
DarkMagenta_1
DarkOliveGreen1
DarkOliveGreen1_1
DarkOliveGreen2
DarkOliveGreen3
DarkOliveGreen3_1
DarkOliveGreen3_2
DarkOrange
DarkOrange3
DarkOrange3_1
DarkRed
DarkRed_1
DarkSeaGreen
DarkSeaGreen1
DarkSeaGreen1_1
DarkSeaGreen2
DarkSeaGreen2_1
DarkSeaGreen3
DarkSeaGreen3_1
DarkSeaGreen4
DarkSeaGreen4_1
DarkSlateGray1
DarkSlateGray2
DarkSlateGray3
DarkTurquoise
DarkViolet
DarkViolet_1
DeepPink1
DeepPink1_1
DeepPink2
DeepPink3
DeepPink3_1
DeepPink4
DeepPink4_1
DeepPink4_2
DeepSkyBlue1
DeepSkyBlue2
DeepSkyBlue3
DeepSkyBlue3_1
DeepSkyBlue4
DeepSkyBlue4_1
DeepSkyBlue4_2
Default
DodgerBlue1
DodgerBlue2
DodgerBlue3
Fuchsia
Gold1
Gold3
Gold3_1
Green
Green1
Green3
Green3_1
Green4
GreenYellow
Grey
Grey0
Grey100
Grey11
Grey15
Grey19
Grey23
Grey27
Grey3
Grey30
Grey35
Grey37
Grey39
Grey42
Grey46
Grey50
Grey53
Grey54
Grey58
Grey62
Grey63
Grey66
Grey69
Grey7
Grey70
Grey74
Grey78
Grey82
Grey84
Grey85
Grey89
Grey93
Honeydew2
HotPink
HotPink2
HotPink3
HotPink3_1
HotPink_1
IndianRed
IndianRed1
IndianRed1_1
IndianRed_1
Khaki1
Khaki3
LightCoral
LightCyan1
LightCyan3
LightGoldenrod1
LightGoldenrod2
LightGoldenrod2_1
LightGoldenrod2_2
LightGoldenrod3
LightGreen
LightGreen_1
LightPink1
LightPink3
LightPink4
LightSalmon1
LightSalmon3
LightSalmon3_1
LightSeaGreen
LightSkyBlue1
LightSkyBlue3
LightSkyBlue3_1
LightSlateBlue
LightSlateGrey
LightSteelBlue
LightSteelBlue1
LightSteelBlue3
LightYellow3
Lime
Magenta1
Magenta2
Magenta2_1
Magenta3
Magenta3_1
Magenta3_2
Maroon
MediumOrchid
MediumOrchid1
MediumOrchid1_1
MediumOrchid3
MediumPurple
MediumPurple1
MediumPurple2
MediumPurple2_1
MediumPurple3
MediumPurple3_1
MediumPurple4
MediumSpringGreen
MediumTurquoise
MediumVioletRed
MistyRose1
MistyRose3
NavajoWhite1
NavajoWhite3
Navy
NavyBlue
Olive
Orange1
Orange3
Orange4
Orange4_1
OrangeRed1
Orchid
Orchid1
Orchid2
PaleGreen1
PaleGreen1_1
PaleGreen3
PaleGreen3_1
PaleTurquoise1
PaleTurquoise4
PaleVioletRed1
Pink1
Pink3
Plum1
Plum2
Plum3
Plum4
Purple
Purple3
Purple4
Purple4_1
Purple_1
Purple_2
Red
Red1
Red3
Red3_1
RosyBrown
RoyalBlue1
Salmon1
SandyBrown
SeaGreen1
SeaGreen1_1
SeaGreen2
SeaGreen3
Silver
SkyBlue1
SkyBlue2
SkyBlue3
SlateBlue1
SlateBlue3
SlateBlue3_1
SpringGreen1
SpringGreen2
SpringGreen2_1
SpringGreen3
SpringGreen3_1
SpringGreen4
SteelBlue
SteelBlue1
SteelBlue1_1
SteelBlue3
Tan
Teal
Thistle1
Thistle3
Turquoise2
Turquoise4
Violet
Wheat1
Wheat4
White
Yellow
Yellow1
Yellow2
Yellow3
Yellow3_1
Yellow4
Yellow4_1

## RELATED LINKS
