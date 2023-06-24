function Format-SpectreBreakdownChart {
    [Alias('spbkchart')]
    [cmdletbinding()]
    param (
        [Parameter(Mandatory,Position=0, ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [array]
        $Data,

        $Width = $Host.UI.RawUI.Width
    )
    begin {
        $chart = [Spectre.Console.BreakdownChart]::new()
        $chart.Width = $Width
    }
    process {
        $chart = [Spectre.Console.BreakdownChartExtensions]::AddItem($chart, $Data.Label, $Data.Value, [Spectre.Console.Color]::$($Data.Color))
    }
    end {
        [Spectre.Console.AnsiConsole]::Write($chart)
    }
}