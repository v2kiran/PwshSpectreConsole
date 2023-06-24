function Read-SpectreMultiSelection {
    param (
        [string]
        $Title = "What are your favourite [$($script:AccentColor.ToString())]colors[/]?",

        [array]
        $Choices = @("red", "orange", "yellow", "green", "blue", "indigo", "violet"),

        [string]
        $ChoiceLabelProperty,

        [ValidateSpectreColor()]
        [ArgumentCompletionsSpectreColors()]
        [string]
        $Color = $script:AccentColor.ToString(),

        [int]
        $PageSize = 5
    )
    $prompt = [Spectre.Console.MultiSelectionPrompt[string]]::new()

    $choiceLabels = $Choices
    if($ChoiceLabelProperty) {
        $choiceLabels = $Choices | Select-Object -ExpandProperty $ChoiceLabelProperty
    }

    $duplicateLabels = $choiceLabels | Group-Object | Where-Object { $_.Count -gt 1 }
    if($duplicateLabels) {
        Write-Error "You have duplicate labels in your select list, this is ambiguous so a selection cannot be made"
        exit 2
    }

    $prompt = [Spectre.Console.MultiSelectionPromptExtensions]::AddChoices($prompt, [string[]]$choiceLabels)
    $prompt.Title = $Title
    $prompt.PageSize = $PageSize
    $prompt.WrapAround = $true
    $prompt.HighlightStyle = [Spectre.Console.Style]::new([Spectre.Console.Color]::$Color)
    $prompt.InstructionsText = "[$($script:DefaultValueColor)](Press [$($script:AccentColor.ToString())]space[/] to toggle a choice and press [$($script:AccentColor.ToString())]<enter>[/] to submit your answer)[/]"
    $prompt.MoreChoicesText = "[$($script:DefaultValueColor)](Move up and down to reveal more choices)[/]"
    $selected = Invoke-SpectrePromptAsync -Prompt $prompt

    if($ChoiceLabelProperty) {
        $selected = $Choices | Where-Object -Property $ChoiceLabelProperty -Eq $selected
    }

    return $selected
}