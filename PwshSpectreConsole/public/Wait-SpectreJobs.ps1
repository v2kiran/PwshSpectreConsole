# Adapted from https://key2consulting.com/powershell-how-to-display-job-progress/
function Wait-SpectreJobs {
    param (
        [object]
        $Context,

        [array]
        $Jobs,

        [int]
        $TimeoutSeconds = 60
    )

    $timeout = (Get-Date).AddSeconds($TimeoutSeconds)

    while(!$Context.IsFinished) {
        if((Get-Date) -gt $timeout) {
            throw "Timed out waiting for jobs after $TimeoutSeconds seconds"
        }
        foreach($job in $Jobs) {
            $progress = 0.0
            if($null -ne $job.Job.ChildJobs[0].Progress) {
                $progress = $job.Job.ChildJobs[0].Progress | Select-Object -Last 1 -ExpandProperty "PercentComplete"
            }
            $job.Task.Value = $progress
        }
        Start-Sleep -Milliseconds 100
    }
}