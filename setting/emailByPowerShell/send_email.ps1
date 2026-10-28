# param($ccEmails, $toEmails, $password)
# Configure logging
#$logFile = "email_log.txt"
function Write-Log {
    param (
        [string]$Message,
        [string]$Level = "INFO"
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp - $Level - $Message" | Out-File -Append -FilePath $logFile
}

function Send-Email {
    param (
        [string]$Subject,
        [string]$Body,
        [string[]]$ToEmails,
        [string[]]$CcEmails,
        [string]$FromEmail,
        [pscredential]$Credential,
        [string[]]$AttachmentPaths
    )
    try {
        Write-Log "Creating email message"
        $msg = New-Object System.Net.Mail.MailMessage
        $msg.From = $FromEmail
        $msg.To.Add($ToEmails -join ',')
        $msg.CC.Add($CcEmails -join ',')
        $msg.Subject = $Subject
        $msg.Body = $Body
        $msg.IsBodyHtml = $true

        foreach ($AttachmentPath in $AttachmentPaths) {
            $Attachment = New-Object System.Net.Mail.Attachment($AttachmentPath)
            $Attachment.Name = [System.IO.Path]::GetFileName($AttachmentPath)
            $msg.Attachments.Add($Attachment)
        }

        Write-Log "Connecting to SMTP server"
        $smtp = New-Object Net.Mail.SmtpClient("mail.bot.or.th", 587)
        $smtp.EnableSsl = $true
        $smtp.Credentials = $Credential
        $smtp.Send($msg)
        Write-Log "Email sent successfully"
    } catch {
        Write-Log "Failed to send email: $_" "ERROR"
    }
}

function ParseRobotResults {
    param (
        [string]$xmlFile
    )
    Write-Log "Parsing XML file: $xmlFile"
    if (-Not (Test-Path $xmlFile)) {
        Write-Log "File not found: $xmlFile" "ERROR"
        return 0, 0
    }
    try {
        [xml]$xml = Get-Content $xmlFile
        $totalStat = $xml.SelectSingleNode("//statistics/total/stat")
        $passCount = [int]$totalStat.pass
        $failCount = [int]$totalStat.fail
    } catch {
        Write-Log "Failed to parse XML file: $_" "ERROR"
        return 0, 0
    }

    foreach ($suite in $xml.robot.suite) {
        Write-Log "Processing suite: $($suite.name)"
    }
    Write-Log "Total Passed: $passCount, Total Failed: $failCount"
    return $failCount, $passCount
}

function Main {
    # XML Document
    $xmlFile = (Get-Item -Path Env:OutputXMLPATH).Value
    $resultFile = ParseRobotResults -xmlFile $xmlFile
    $failCount = $resultFile[0]
    $passCount = $resultFile[1]

    # Log Document
    $htmlLogFile = (Get-Item -Path Env:OutputLogPATH).Value
    $resultLogFile = ParseRobotResults -xmlFile $htmlLogFile
    $failCountLogFile = $resultLogFile[0]
    $passCountLogFile = $resultLogFile[1]
    # Report Document
    $htmlReportFile = (Get-Item -Path Env:OutputFileReport).Value
    $resultReportFile = ParseRobotResults -xmlFile $htmlReportFile
    $failCountReportFile = $resultReportFile[0]
    $passCountReportFile = $resultReportFile[1]

    $Subject = "[SSM][Test] - Passed: $passCount, Failed: $failCount"
    $tableRowSystemName = "<tr style='background-color:#dadef8'><td>SYSTEM SSM</td><td>$passCount</td><td>$failCount</td></tr>"
    $body = @"
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        text-align: center;
    }
</style>
<body>
    <table style="width:100%">
        <tr style="background-color:#60f9d9">
            <th style="color:#007b7d; width:60%">Test Scenario</th>
            <th style="color:#b57d22; width:20%">Passed</th>
            <th style="color:#ff0000; width:20%">Failed</th>
        </tr>
        $tableRowSystemName
    </table>
    <br>
    <br>
    SSM Release: <a href="https://azuredevops.bot.or.th/BOTCollection/64_SSM/_release?_a=releases&view=mine&definitionId=1">Link To Azure Release Pipeline</a><br>
    <br>
    SSM Testscript: <a href="https://bankofthailand-my.sharepoint.com/:x:/r/personal/phakornc_bot_or_th/_layouts/15/Doc.aspx?sourcedoc=%7B75338976-A37C-4B1F-98E7-D6FD7B737857%7D&file=SSM-TestScript%20V01_2026.xlsx">SSM Testscript</a><br>
    <br>
    SSM User Manual: <a href="https://bankofthailand-my.sharepoint.com/:w:/r/personal/croekkis_bot_or_th/Documents">SSM User Manual</a><br>
    <br>
</body>
</html>
"@
    $toEmails = (Get-Item -Path Env:ToEmail).Value -split ','
    $ccEmails = (Get-Item -Path Env:ccEmail).Value -split ','
    $fromEmail = (Get-Item -Path Env:FromEmail).Value
    $password = (Get-Item -Path Env:FromEmailPassword).Value
    $passwordSecure = ConvertTo-SecureString $password -AsPlainText -Force
    $credential = New-Object System.Management.Automation.PSCredential ($fromEmail, $passwordSecure)
    $logFilePath = (Get-Item -Path Env:OutputLogFilePATH).Value
    $reportPath = (Get-Item -Path Env:OutputFileReport).Value
    $attachmentPaths = @($logFilePath, $reportPath)
    Send-Email -subject $Subject -body $body -toEmails $toEmails -ccEmails $ccEmails -fromEmail $fromEmail -credential $credential -attachmentPaths $attachmentPaths
}
Main
