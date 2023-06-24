function Read-SpectreText {
    param (
        [string]
        $Question = "What's your name?",

        [string]
        $DefaultAnswer = "Prefer not to say"
    )
    $prompt = [Spectre.Console.TextPrompt[string]]::new($Question)
    $prompt.DefaultValueStyle = [Spectre.Console.Style]::new($script:DefaultValueColor)
    $prompt = [Spectre.Console.TextPromptExtensions]::DefaultValue($prompt, $DefaultAnswer)
    return Invoke-SpectrePromptAsync -Prompt $prompt
}