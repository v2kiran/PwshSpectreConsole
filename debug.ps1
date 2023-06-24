Import-Module 'C:\gh\PwshSpectreConsole\PwshSpectreConsole\PwshSpectreConsole.psd1' -Verbose -Force


'hello world' | Format-SpectrePanel -Title 'test panel' -Border double -Color CadetBlue -Expand

<# private static void HorizontalRule(string title)
{
    AnsiConsole.WriteLine();
    AnsiConsole.Write(new Rule($"[white bold]{title}[/]").RuleStyle("grey").LeftJustified());
    AnsiConsole.WriteLine();
} #>

function HorizontalRule
{
    param($title)

    [Spectre.Console.AnsiConsole]::WriteLine()
    $rule = [Spectre.Console.Rule]::new("[white bold]$Title[/]")
    #$rule.Style.Background = [Spectre.Console.Color]::Grey
    $rule.Justification = [Spectre.Console.Justify]::Left
    [Spectre.Console.AnsiConsole]::Write($rule)
    [Spectre.Console.AnsiConsole]::WriteLine()
}

HorizontalRule 'some title'



Get-Service b* | Select-Object name, DisplayName, status | Format-SpectreTable -Border Heavy -Color Yellow



var table = new Table().Border(border);
$table = [System.Console.table]::new()


table.AddColumn('[yellow]Header 1[/]', c => c.Footer('[grey]Footer 1[/]'));
table.AddColumn('[yellow]Header 2[/]', col => col.Footer('[grey]Footer 2[/]').RightAligned());
table.AddRow('Cell', 'Cell');
table.AddRow('Cell', 'Cell');

return new Panel(table)
.Header($" [blue]{name}[/] ", Justify.Center)
.NoBorder();

$Border = 'heavy'
$color = 'aqua'
$table = [Spectre.Console.Table]::new()
$table.Border = [Spectre.Console.TableBorder]::$Border
$table.BorderStyle = [Spectre.Console.Style]::new([Spectre.Console.Color]::$Color)

$table.AddColumn

$column1 = [Spectre.Console.TableColumn]::new('[yellow]Header 1[/]')
$column1.Footer = '[grey]Footer 1[/]'

[Spectre.Console.Rendering]

$column2 = [Spectre.Console.TableColumn]::new('[yellow]Header 2[/]')
$column2.Footer('[grey]Footer 2[/]')
$column2.Alignment = 'Right'
#[Spectre.Console.Align]::Right($column2)



$Border = 'heavy'
$color = 'aqua'
$table = [Spectre.Console.Table]::new()
$table.Border = [Spectre.Console.TableBorder]::$Border
$table.BorderStyle = [Spectre.Console.Style]::new([Spectre.Console.Color]::$Color)
$column1 = [Spectre.Console.TableColumn]::new('[bold Green]City[/]')
$column2 = [Spectre.Console.TableColumn]::new('[bold Blue]Latitude[/]')
$column3 = [Spectre.Console.TableColumn]::new('[bold Yellow]Longitude[/]')

#[Spectre.Console.TableExtensions]::AddColumns($table,)

$table.AddColumn($column1)
$table.AddColumn($column2)
$table.AddColumn($column3)


$r = [Spectre.Console.TableExtensions]::AddRow($table, 3)


















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

#root
$root = [Spectre.Console.Tree]::new('[bold red]Scrum Team[/]')

# dev
$dev = [Spectre.Console.Tree]::new('[italic DarkGreen]Development[/]')

# add dev under the root node
[Spectre.Console.HasTreeNodeExtensions]::AddNode($root, $dev)

#devtable
$devTable = [Spectre.Console.Table]::new()
$devTable.AddColumn('[italic DarkCyan]Name[/]')
$devTable.AddColumn('[italic DarkOrange]Experience[/]')

$data = @(
    [PSCustomObject]@{
        Name       = 'charle home2'
        Experience = 6.2
    },
    [PSCustomObject]@{
        Name       = 'charle home3'
        Experience = 6.3
    },
    [PSCustomObject]@{
        Name       = 'charle home4'
        Experience = 6.4
    },
    [PSCustomObject]@{
        Name       = 'charle home5'
        Experience = 6.5
    },
    [PSCustomObject]@{
        Name       = 'charle home6'
        Experience = 6.6
    }
)

$row = [System.Collections.Generic.List[Spectre.Console.Text]]::new()
$prop_names = $data[0].psobject.Properties.Name

$Data | Get-Member -MemberType Properties | Foreach-Object {
    if($null -eq $Data."$($_.Name)") {
        $row.add( [Spectre.Console.Text]::new(""))
    } else {
        $row.add( [Spectre.Console.Text]::new($Data."$($_.Name)") )
    }
}

# create the devtable
$devTable = [Spectre.Console.TableExtensions]::AddRow($devTable, [Spectre.Console.Text[]]$row)


# add devtable under the dev node
[Spectre.Console.HasTreeNodeExtensions]::AddNode($dev, $devTable)



# header and footer
$header1 = [Spectre.Console.TableColumnExtensions]::Header([Spectre.Console.TableColumn]::new('[italic DarkCyan]Name[/]'),'NAME')
$header2 = [Spectre.Console.TableColumnExtensions]::Header([Spectre.Console.TableColumn]::new('[italic DarkOrange]Experience[/]'),'Exp')
$devTable.AddColumn($header1)
$devTable.AddColumn($header2)



[Spectre.Console.AnsiConsole]::Write($devTable)
[Spectre.Console.AnsiConsole]::Write($tb1)

[Spectre.Console.AnsiConsole]::Write($root)


ipmo "C:\Users\Kiran\OneDrive\GitHub\Posh.Spectre.Console\bin\Debug\netstandard2.0\Posh.Spectre.Console.dll"


$Data | Get-Member -MemberType Properties | Foreach-Object {
    if($null -eq $Data."$($_.Name)") {
        #$row.add( [Spectre.Console.Text]::new(""))
        "empty"
    } else {
        $Data."$($_.Name)"
        #$row.add( [Spectre.Console.Text]::new($Data."$($_.Name)".ToString()) )
    }
}



[Spectre.Console.AnsiConsole]::MarkupLine("[dim]Dim[/] text");
[Spectre.Console.AnsiConsole]::MarkupLine("[bold]Bold[/] text");
[Spectre.Console.AnsiConsole]::MarkupLine("[italic]Italic[/] text");
[Spectre.Console.AnsiConsole]::MarkupLine("[underline]Underline[/] text");
[Spectre.Console.AnsiConsole]::MarkupLine("[red on blue]Colored[/] text");
[Spectre.Console.AnsiConsole]::MarkupLine("[invert red on blue]Inverted[/] text");
[Spectre.Console.AnsiConsole]::MarkupLine("[conceal]Hidden[/] text");
[Spectre.Console.AnsiConsole]::MarkupLine("[slowblink]Opening[/] shortly");
[Spectre.Console.AnsiConsole]::MarkupLine("[rapidblink]Closing[/] shortly");
[Spectre.Console.AnsiConsole]::MarkupLine("[link=https://github.com/SpicyCoder]Github[/] profile");