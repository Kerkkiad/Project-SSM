*** Keywords ***
[SSM_IN][SchStudent] คลิก เพิ่มข้อมูลนักศึกษา
    Browser.Click    ${ssm_in.SchStudentAddNew_Button}

[SSM_IN][SchStudent] คลิก แถบขยายค้นหาจากชื่อ นักศึกษา
    Browser.Click    ${ssm_in.SchStudentAddSearchForm_Button}

[SSM_IN][SchStudent] กรอกข้อมูล รหัส นักศึกษา
    Browser.Wait For Elements State    ${ssm_in.SchStudentAddStdID_Input}    visible    timeout=30s
    Browser.Fill Text    ${ssm_in.SchStudentAddStdID_Input}    ${TC02_001.SchStudent_StdID}

[SSM_IN][SchStudent] คลิก แถบขยายค้นหาจากชื่อ นักศึกษา (ModalSearch)
    Browser.Click    ${ssm_in.SchStudentAddStdID_Button}

[SSM_IN][SchStudent] คลิก เลือกนักศึกษษาที่ค้นหา
    Browser.Wait For Elements State    ${ssm_in.SchStudentAddSelectStd_Button}    visible    timeout=30s
    Browser.Click    ${ssm_in.SchStudentAddSelectStd_Button}

[SSM_IN][SchStudent] คลิก ค้นหาถึงนักศึกษา (FormSearch)
    Browser.Click    ${ssm_in.SchStudentAddSearchConfirm_Button}

[SSM_IN][SchStudent] ตรวจสอบข้อมูล ชื่อ ที่แสดงบนนักศึกษาที่เพิ่ม
    Browser.Wait For Elements State    ${ssm_in.Loading}    hidden    timeout=30s
    Browser.Get Text    ${ssm_in.SchStudentName_Input}    ==    ${TC02_001.SchStudent_StdName}

[SSM_IN][SchStudent] คลิกขยาย Section ค้นหาข้อมูล
    Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.SchStudentSearchExpand_Form}

[SSM_IN][SchStudent] กรอกข้อมูล ชื่อนักศึกษา
    Browser.Wait For Elements State    ${ssm_in.SchStudentSearchStdName_Input}    visible    timeout=30s
    Browser.Fill Text    ${ssm_in.SchStudentSearchStdName_Input}    ${TC02_002.SchStudent_StdName}

[SSM_IN][SchStudent] คลิก ค้นหา
    Browser.Click    ${ssm_in.SchStudentSearchSearch_Button}

[SSM_IN][SchStudent] คลิกเลือกสรุปรายชื่อที่ระบบค้นพบ
    Sleep    2s
    # Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.SchStudentEditFirstStd_Button}

[SSM_IN][SchStudent] ตรวจสอบข้อมูล ชื่อ ที่แสดงบนนักศึกษาที่ค้นหา
    Browser.Wait For Elements State    ${ssm_in.Loading}    hidden    timeout=30s
    Browser.Get Text    ${ssm_in.SchStudentName_Input}    ==    ${TC02_002.SchStudent_StdName}

[SSM_IN][SchStudent] กรอกข้อมูล Passport
    Browser.Wait For Elements State    ${ssm_in.Loading}    hidden    timeout=30s
    Browser.Fill Text    ${ssm_in.SchStudentEditPassport_Input}    ${TC02_003.Passport_Value}

[SSM_IN][SchStudent] คลิก แก้ไขข้อมูลนักศึกษา
    Browser.Click    ${ssm_in.SchStudentEditSubmit_Button}

[SSM_IN][SchStudent] คลิก ยืนยัน แก้ไขข้อมูลนักศึกษา
    Browser.Wait For Elements State    ${ssm_in.SchStudentEditConfirm_Button}    visible    timeout=5s
    Browser.Click    ${ssm_in.SchStudentEditConfirm_Button}

[SSM_IN][SchStudent] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าค้นหา
    Wait For Elements State    ${ssm_in.SchStudentModal_Form}    hidden    timeout=5s
