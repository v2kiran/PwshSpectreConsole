function Add-SpectreJob {
    param (
        [object]
        $Context,

        [string]
        $JobName,

        [System.Management.Automation.Job]
        $Job
    )

    return @{
        Job = $Job
        Task = $Context.AddTask($JobName)
    }
}