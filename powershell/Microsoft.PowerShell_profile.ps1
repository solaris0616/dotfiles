function git_branch {
    git branch 2>$null |
    where { -not [System.String]::IsNullOrEmpty($_.Split()[0]) } |
    % { $bn = $_.Split()[1]
        Write-Output "(git:$bn) " }
}

function Prompt {
    $gitBranch = git_branch
    Write-Host $gitBranch -NoNewLine -ForegroundColor "Green"
    Write-Host $(get-location) -NoNewLine -ForegroundColor "Blue"
    return " > "
}