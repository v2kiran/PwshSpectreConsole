﻿function Format-SpectreTable {
    [Alias('sptable')]
    [cmdletbinding()]
    param (
        [Parameter(Mandatory,Position=0, ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [array] $Data,

        [ValidateSpectreBorder()]
        [ArgumentCompletionsSpectreBorders()]
        [string]
        $Border = "MinimalHeavyHead",

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = 'Yellow'
    )
    begin {
        $table = [Spectre.Console.Table]::new()
        $table.Border = [Spectre.Console.TableBorder]::$Border
        $table.BorderStyle = [Spectre.Console.Style]::new([Spectre.Console.Color]::$Color)
        $headerProcessed = $false
    }
    process {
        if(!$headerProcessed) {
            $data[0].psobject.Properties.Name | Foreach-Object {
                $table.AddColumn($_) | Out-Null
            }

            $headerProcessed = $true
        }
        $row = [System.Collections.Generic.List[Spectre.Console.Text]]::new()
        $Data | Get-Member -MemberType Properties | Foreach-Object {
            if($null -eq $Data."$($_.Name)") {
                $row.add( [Spectre.Console.Text]::new(""))
            } else {
                $row.add( [Spectre.Console.Text]::new($Data."$($_.Name)".ToString()) )
            }
        }
        [Spectre.Console.Table]$table = [Spectre.Console.TableExtensions]::AddRow($table, [Spectre.Console.Text[]]$row)
    }
    end {
        #Write-Output $table -NoEnumerate
        [Spectre.Console.AnsiConsole]::Write($table)
    }
}