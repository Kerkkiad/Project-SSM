*** Keywords ***
[SSM_IN][SchCal] คลิก เพิ่มรายการ ติดตามการจ่ายเงิน
    Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.SchCalAddCal_Button}

[SSM_IN][SchCal] คลิก ค้นหา ชื่อนักศึกษา
    Browser.Click    ${ssm_in.SchCalAddSearchStd_Button}

[SSM_IN][SchCal] กรอกข้อมูล นักศึกษา
    Browser.Wait For Elements State    ${ssm_in.SchCalAddSearchStdID_Input}    visible    timeout=30s
    Browser.Fill Text    ${ssm_in.SchCalAddSearchStdID_Input}    ${TC02_006.SchCal_StdName}

[SSM_IN][SchCal] คลิก ค้นหา นักศึกษา
    Browser.Click    ${ssm_in.SchCalAddSearchStdID_Button}

[SSM_IN][SchCal] คลิก เลือกชื่อนักเรียน ที่ค้นหา
    Browser.Wait For Load State    networkidle    timeout=15s
    Sleep    1s
    Browser.Click    ${ssm_in.SchCalAddChooseStd_Button}

[SSM_IN][SchCal] เลือกข้อมูล ประเภทการคำนวณจ่ายเงิน
    Browser.Select Options By    ${ssm_in.SchCalAddPayCalType_Dropdown}    text    ${TC02_006.SchCal_PayCalType}

[SSM_IN][SchCal] เลือกข้อมูล ชื่อสัญญาทุน
    Browser.Select Options By    ${ssm_in.SchCalAddSelectCalContract_Dropdown}    text    ${TC02_006.SchCal_ContractName}

[SSM_IN][SchCal] คลิก เพิ่ม สัญญา
    Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.SchCalAddSelectCalContract_Button}

[SSM_IN][SchCal] ตรวจสอบข้อมูล ชื่อนักศึกษา
    Browser.Wait For Load State    networkidle    timeout=15s
    Sleep    1s
    ${StdNameFull}    Browser.Get Text    ${ssm_in.SchCalAddStdName_Text}
    Should Contain    ${StdNameFull}    ${TC02_006.SchCal_StdName}    ignore_case=True

[SSM_IN][SchCal] ตรวจสอบข้อมูล วันที่เริ่มทำงาน
    Browser.Get Text    ${ssm_in.SchCalAddStartWorkDay_Input}    ==    ${TC02_006.SchCal_StartWorkDay}

[SSM_IN][SchCal] ตรวจสอบข้อมูล วันที่สิ้นสุดการจ่ายเงิน
    Browser.Get Text    ${ssm_in.SchCalAddShowLastDate_Text}    ==    ${TC02_006.SchCal_LastWorkDay}
