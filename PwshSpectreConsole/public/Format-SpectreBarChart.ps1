function Format-SpectreBarChart {
    [Alias('spbarchart')]
    [cmdletbinding()]
    param (
        [Parameter(Mandatory,Position=0, ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [array]
        $Data,

        [Parameter(Position=1, ValueFromPipelineByPropertyName)]
        [string]
        $Title,

        $Width = $Host.UI.RawUI.Width
    )
    begin {
        $barChart = [Spectre.Console.BarChart]::new()
        if($Title) {
            $barChart.Label = $Title
        }
        $barChart.Width = $Width
    }
    process {
        $barChart = [Spectre.Console.BarChartExtensions]::AddItem($barChart, $Data.Label, $Data.Value, [Spectre.Console.Color]::$($Data.Color))
    }
    end {
        [Spectre.Console.AnsiConsole]::Write($barChart)
    }
}