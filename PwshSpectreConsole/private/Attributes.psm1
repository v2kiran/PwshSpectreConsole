class ValidateSpectreColor : System.Management.Automation.ValidateArgumentsAttribute
{
    ValidateSpectreColor() : base() { }
    [void]Validate([object] $Color, [System.Management.Automation.EngineIntrinsics]$EngineIntrinsics) {
        $spectreColors = [Spectre.Console.Color] | Get-Member -Static -Type Properties | Select-Object -ExpandProperty Name
        $result = $spectreColors -contains $Color
        if($result -eq $false) {
            throw "'$Color' is not in the list of valid Spectre colors ['$($spectreColors -join ''', ''')']"
        }
    }
}

class ArgumentCompletionsSpectreColors : System.Management.Automation.ArgumentCompleterAttribute
{
    ArgumentCompletionsSpectreColors() : base({
        [Spectre.Console.Color] | Get-Member -Static -Type Properties | Select-Object -ExpandProperty Name
    }) { }
}

#################### borders

class ValidateSpectreBorder : System.Management.Automation.ValidateArgumentsAttribute
{
    ValidateSpectreBorder() : base() { }
    [void]Validate([object] $Border, [System.Management.Automation.EngineIntrinsics]$EngineIntrinsics) {
        $spectreBorders = [Spectre.Console.BoxBorder] | Get-Member -Static -Type Properties | Select-Object -ExpandProperty Name
        $result = $spectreBorders -contains $Border
        if($result -eq $false) {
            throw "'$Border' is not in the list of valid Spectre colors ['$($spectreBorders -join ''', ''')']"
        }
    }
}

class ArgumentCompletionsSpectreBorders : System.Management.Automation.ArgumentCompleterAttribute
{
    ArgumentCompletionsSpectreBorders() : base({
        [Spectre.Console.BoxBorder] | Get-Member -Static -Type Properties | Select-Object -ExpandProperty Name
    }) { }
}


################## spinners

class ValidateSpectrespinner : System.Management.Automation.ValidateArgumentsAttribute
{
    ValidateSpectrespinner() : base() { }
    [void]Validate([object] $spinner, [System.Management.Automation.EngineIntrinsics]$EngineIntrinsics) {
        $spectrespinners = [Spectre.Console.Spinner+Known] | Get-Member -Static -Type Properties | Select-Object -ExpandProperty Name
        $result = $spectrespinners -contains $spinner
        if($result -eq $false) {
            throw "'$spinner' is not in the list of valid Spectre colors ['$($spectrespinners -join ''', ''')']"
        }
    }
}

class ArgumentCompletionsSpectrespinners : System.Management.Automation.ArgumentCompleterAttribute
{
    ArgumentCompletionsSpectrespinners() : base({
        [Spectre.Console.Spinner+Known] | Get-Member -Static -Type Properties | Select-Object -ExpandProperty Name
    }) { }
}

