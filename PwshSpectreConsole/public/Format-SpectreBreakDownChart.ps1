function Format-SpectreBreakdownChart {
    param (
        [Parameter(ValueFromPipeline)]
        [array]
        $Data,

        $Width = $Host.UI.RawUI.Width
    )
    begin {
        $chart = [Spectre.Console.BreakdownChart]::new()
        $chart.Width = $Width
    }
    process {
        $chart = [Spectre.Console.BreakdownChartExtensions]::AddItem($chart, $Data.Label, $Data.Value, $Data.Color)
    }
    end {
        [Spectre.Console.AnsiConsole]::Write($chart)
    }
}