function Write-SpectreHost {
    [cmdletbinding()]
    param (
        # Parameter help description
        [Parameter(Mandatory,Position=0,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [string]
        $Message,

        [switch]
        $NoNewline
    )
    if($NoNewline) {
        [Spectre.Console.AnsiConsole]::Markup($Message)
    } else {
        [Spectre.Console.AnsiConsole]::MarkupLine($Message)
    }
}