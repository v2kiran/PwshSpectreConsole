using namespace Spectre.Console
using namespace Posh.Spectre.Console

# simple table
$table = [Spectre.Console.Table]::new()
$null = $table.AddColumn('first')
$null = $table.AddColumn('second')
$null = [Posh.Spectre.Console.Helpers]::AddTableRow($table, 'firstrow', 'secondrow')
$null = [Posh.Spectre.Console.Helpers]::AddTableRow($table, '[italic cyan]thirdrow[/]', '[blue]fourthrow[/]')
#$table.Border = [Spectre.Console.TableBorder]::SimpleHeavy
$table.Border = [Spectre.Console.TableBorder]::Minimal
[Spectre.Console.AnsiConsole]::Write($table)


## Services Table
$services = Get-Service b* | Select-Object Name, DisplayName, Status
$table = [Spectre.Console.Table]::new()
$cols = $services[0].psobject.Properties.name
foreach ($c in $cols)
{
    $null = $table.AddColumn("$c")
}
foreach ($s in $services)
{
    $color = 'red'
    $icon = ':red_circle:'

    if($s.Status -eq 'running')
    {
        $color = 'green'
        $icon = ':green_circle:'
    }
    $null = [Posh.Spectre.Console.Helpers]::AddTableRow($table, "[bold cyan]$($s.name)[/]", "[blue]$($s.DisplayName)[/]","$icon [$color]$($s.Status)[/]")
}
$table.Border = [Spectre.Console.TableBorder]::MinimalHeavyHead
$null = [Spectre.Console.TableColumnExtensions]::Footer($table.Columns[0],"This is the Name")
$null = [Spectre.Console.TableColumnExtensions]::Footer($table.Columns[1],"This is the longer format displayname")
[Spectre.Console.AnsiConsole]::Write($table)
