function Format-SpectrePanel
{
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline)]
        [string]
        $Data,

        [string]
        $Title,

        [ValidateSet('Left','Right','Center')]
        [string]
        $Align = 'Center',

        #[ValidateSet('Ascii','Square','Rounded','Heavy','Double','None')]

        [ValidateSpectreBorder()]
        [ArgumentCompletionsSpectreBorders()]
        [string]
        $Border = 'Rounded',

        [switch]
        $Expand,

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString()
    )
    $panel = [Spectre.Console.Panel]::new($Data)
    if ($Title)
    {
        $panel.Header = [Spectre.Console.PanelHeader]::new($Title)
        if($Align)
        {
            $panel.Header.Justification = [Spectre.Console.Justify]::$Align
        }
    }
    $panel.Expand = $Expand
    $panel.Border = [Spectre.Console.BoxBorder]::$Border
    $panel.BorderStyle = [Spectre.Console.Style]::new([Spectre.Console.Color]::$Color)
    [Spectre.Console.AnsiConsole]::Write($panel)
}
