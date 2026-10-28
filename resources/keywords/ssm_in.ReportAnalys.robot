*** Keywords ***
[SSM_IN][ReportAnalys] คลิกปุ่ม Export ข้อมูล Demographic
    Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.RptAnalyExp_Button}
