using namespace Spectre.Console
using module NameIT
using namespace Posh.Spectre.Console
<#

// Tree: https://spectreconsole.net/widgets/tree
var faker = new Faker(); // from Bogus, to generate fake data
var root = new Tree('[bold red]Scrum Team[/]');

// Dev
var dev = root.AddNode($"[italic {Color.DarkGreen}]Development[/]");

var devTable = new Table();
devTable.AddColumns($"[italic {Color.DarkCyan}]Name[/]", $"[italic {Color.DarkOrange}]Experience[/]");
for (var i = 0; i < 5; i++)
{
    devTable.AddRow($"[{Color.DarkCyan}]{faker.Name.FullName()}[/]", $"[{Color.DarkOrange}]{faker.Random.Double(0, 20):F1}[/]");
}

dev.AddNode(devTable);

// QA
var qa = root.AddNode($"[italic {Color.Lime}]QA[/]");

var qaTable = new Table();
qaTable.AddColumns($"[italic {Color.DarkCyan}]Name[/]", $"[italic {Color.DarkOrange}]Experience[/]");
for (var i = 0; i < 2; i++)
{
    qaTable.AddRow($"[{Color.DarkCyan}]{faker.Name.FullName()}[/]", $"[{Color.DarkOrange}]{faker.Random.Double(0, 20):F1}[/]");
}

qa.AddNode(qaTable);
AnsiConsole.Write(root);

#>

$template = @"
FullName    = [person]
Experience = ##
"@
$faker = Invoke-Generate $Template -AsPSObject -Count 5

## Root
$root = [Tree]::new("[bold red]Scrum Team[/]")

## Dev
$dev = [Tree]::new("[italic DarkGreen]Development[/]")
$null = [HasTreeNodeExtensions]::AddNode($root, $dev)
$devTable = [Table]::new()
$null = $devTable.AddColumn("[italic DarkCyan]Name[/]")
$null = $devTable.AddColumn("[italic DarkOrange]Experience[/]")
for($i=0;$i -lt 5;$i++)
{
    $null = [Helpers]::AddTableRow($devTable,"[DarkCyan]$($faker[$i].FullName)[/]","[DarkOrange]$($faker[$i].Experience)[/]")
}
$null = [HasTreeNodeExtensions]::AddNode($dev, $devTable)

## QA
$qa = [Tree]::new("[italic Lime]QA[/]")
$null = [HasTreeNodeExtensions]::AddNode($root, $qa)
$qaTable = [Table]::new()
$null = $qaTable.AddColumn("[italic DarkCyan]Name[/]")
$null = $qaTable.AddColumn("[italic DarkOrange]Experience[/]")
for($i=0;$i -lt 2;$i++)
{
    $null = [Helpers]::AddTableRow($qaTable,"[DarkCyan]$($faker[$i].FullName)[/]","[DarkOrange]$($faker[$i].Experience)[/]")
}
$null = [HasTreeNodeExtensions]::AddNode($qa, $qaTable)
[AnsiConsole]::Write($root)