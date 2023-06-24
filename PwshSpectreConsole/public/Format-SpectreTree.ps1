function Format-SpectreTree {
    [Alias('sptree')]
    [cmdletbinding()]
    param (
        [Parameter(Mandatory,Position=0, ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [hashtable]
        $Data,

<#         [ValidateSpectreBorder()]
        [ArgumentCompletionsSpectreBorders()]
        [string]
        $Border = "Rounded", #>

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString()
    )

    function Add-SpectreTreeNode {
        param (
            $Node,
            $Children
        )

        foreach($child in $Children) {
            $newNode = [Spectre.Console.HasTreeNodeExtensions]::AddNode($Node, $child.Label)
            if($child.Children.Count -gt 0) {
                Add-SpectreTreeNode -Node $newNode -Children $child.Children
            }
        }
    }

    $tree = [Spectre.Console.Tree]::new($Data.Label)

    Add-SpectreTreeNode -Node $tree -Children $Data.Children

    $tree.Style = [Spectre.Console.Style]::new([Spectre.Console.Color]::$Color)
    [Spectre.Console.AnsiConsole]::Write($tree)
}