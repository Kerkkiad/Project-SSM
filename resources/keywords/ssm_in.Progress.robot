*** Keywords ***
[SSM_IN][Progress] คลิกขยาย Section ค้นหาข้อมูล
    Browser.Click    ${ssm_in.PrgSearchExpand_Form}

[SSM_IN][Progress] คลิก แถบขยายค้นหา พนักงาน
    Browser.Click    ${ssm_in.PrgSearchEmpID_Button}

[SSM_IN][Progress] กรอกข้อมูล รหัส นักศึกษา
    Browser.Fill Text    ${ssm_in.PrgStdID_Input}    ${TC02_011.Progress_StdID}

[SSM_IN][Progress] คลิก แถบขยายค้นหา นักศึกษา
    Browser.Click    ${ssm_in.PrgSearchStdID_Button}

[SSM_IN][Progress] คลิก รายชื่อนักศึกษา
    Browser.Wait For Elements State    ${ssm_in.PrgShowStdID_Table}    visible    timeout=30s
    Browser.Click    ${ssm_in.PrgAddStd_Button}

[SSM_IN][Progress] คลิก ค้นหา
    Browser.Click    ${ssm_in.PrgSearchForm_Button}

[SSM_IN][Progress] เลือกค้นหาข้อมูล วันที่เริ่มต้น
    Browser.Fill Text    ${ssm_in.PrgDateStart_Input}    ${ssm_in.DateNow}

[SSM_IN][Progress] เลือกค้นหาข้อมูล สถานะ อยู่ระหว่างตรวจสอบ
    Browser.Select Options By    ${ssm_in.PrgStatus_Dropdown}    text    ${TC02_011.Progress_StatusSearch}

[SSM_IN][Progress] คลิก โลดตาม กรณีที่ ตรวจสอบข้อมูล
    Browser.Click    ${ssm_in.PrgVerify_Button}

[SSM_IN][Progress] เปลี่ยนข้อมูล สถานะ
    Browser.Select Options By    ${ssm_in.PrgChgStatus_Dropdown}    value    ${TC02_011.Progress_StatusChange}

[SSM_IN][Progress] คลิก ตรวจสอบข้อมูล
    Browser.Click    css=#layoutModal >> #_verify

[SSM_IN][Progress] คลิก ยืนยัน
    Browser.Click    ${ssm_in.PrgConfirm_Button}

[SSM_IN][Progress] เลือกค้นหาข้อมูล สถานะ ตรวจสอบแล้ว
    Browser.Select Options By    ${ssm_in.PrgStatus_Dropdown}    value    ${TC02_011.Progress_StatusChange}

[SSM_IN][Progress] ตรวจสอบข้อมูล ที่เปลี่ยน สถานะ
    Browser.Get Text    ${ssm_in.PrgStatus_TableCol}    ==    ${TC02_011.Progress_ActualStatus}

[SSM_IN][Progress] ตรวจสอบข้อมูล ที่เปลี่ยน วันที่
    Browser.Get Text    ${ssm_in.PrgStartDate_TableCol}    ==    ${ssm_in.DateNow}
