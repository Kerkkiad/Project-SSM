*** Keywords ***
[SSM_IN][SchContract] คลิกขยาย Section ค้นหาข้อมูล
    Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.SchContractSearchExpand_Form}

[SSM_IN][SchContract] กรอกข้อมูล ชื่อนักศึกษา
    Browser.Wait For Elements State    ${ssm_in.SchContractSearchStdName_Input}    visible    timeout=30s
    Browser.Fill Text    ${ssm_in.SchContractSearchStdName_Input}    ${TC02_004.SchContract_StdName}

[SSM_IN][SchContract] คลิก ค้นหาข้อมูล
    Browser.Click    ${ssm_in.SchContractSearchSearch_Button}

[SSM_IN][SchContract] คลิกเลือกสรุปรายชื่อที่ระบบค้นพบ
    Sleep    2s
    # Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.SchContractFirstContract_Button}

[SSM_IN][SchContract] ตรวจสอบข้อมูล ชื่อ ที่แสดงบนนักศึกษาที่ค้นหา
    Browser.Wait For Elements State    ${ssm_in.Loading}    hidden    timeout=30s
    Browser.Get Text    ${ssm_in.SchContractStdName_Input}    ==    ${TC02_004.SchContract_StdName}

[SSM_IN][SchContract] กรอกข้อมูลหมายเหตุ
    Browser.Wait For Elements State    ${ssm_in.Loading}    hidden    timeout=30s
    Browser.Fill Text    ${ssm_in.SchContractEditNote_Input}    ${TC02_005.SchContract_NoteValue}

[SSM_IN][SchContract] คลิก บันทึกข้อมูลแก้ไข
    Browser.Click    ${ssm_in.SchContractEditSubmit_Button}

[SSM_IN][SchContract] คลิก ยืนยัน
    Browser.Wait For Elements State    ${ssm_in.SchContractEditConfirm_Button}    visible    timeout=5s
    Browser.Click    ${ssm_in.SchContractEditConfirm_Button}

[SSM_IN][SchContract] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าค้นหา
    Browser.Wait For Elements State    ${ssm_in.SchContractModal_Form}    hidden    timeout=5s
