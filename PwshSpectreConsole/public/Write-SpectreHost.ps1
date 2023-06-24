function Write-SpectreHost {
    param (
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