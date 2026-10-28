*** Keywords ***
[SSM_OUT][Scholarship] คลิกปุ่ม เพิ่มเอกสาร
    Browser.Click    ${ssm_out.SchAddDoc_Button}
    Wait For Elements State    ${ssm_out.SchAddData_Button}    visible    timeout=10s
    Wait For Elements State    ${ssm_out.SchAddData_Button}    enabled    timeout=10s

[SSM_OUT][Scholarship] คลิกปุ่ม เพิ่มรายการ
    Browser.Click    ${ssm_out.SchAddData_Button}

[SSM_OUT][Scholarship] เลือกข้อมูล ประเภท ปี ปีการศึกษา
    [Arguments]    ${type}    ${year}    ${term}
    Select Options By    ${ssm_out.SchType_Dropdown}    text    ${type}
    Select Options By    ${ssm_out.SchYear_Dropdown}    text    ${year}
    Select Options By    ${ssm_out.SchTerm_Dropdown}    text    ${term}

[SSM_OUT][Scholarship] อัปโหลดเอกสาร
    Browser.Click    ${ssm_out.SchDetailAddDoc_Button}
    Upload File By Selector    ${ssm_out.SchDetailAddImport_Button}    ${TC01_005.Scholarship_PathImport}

[SSM_OUT][Scholarship] บันทึกผลการอัปโหลด
    Browser.Click    ${ssm_out.SchDetailSaveFile_Button}

[SSM_OUT][Scholarship] คลิกปุ่ม เพิ่มรายการ
    Browser.Click    ${ssm_out.SchDetailAddData_Button}

[SSM_OUT][Scholarship] คลิกปุ่ม ยืนยัน
    Browser.Click    ${ssm_out.SchDetailAddConfirm_Button}

[SSM_OUT][AssertionHome] ตรวจสอบ Assertion ต้องกลับหน้าที่ หน้าแรกที่รายละเอียดการศึกษาทุน
    Wait For Elements State    ${TC01_005.Scholarship_ActualHome}    visible    timeout=5s
    # Wait For Elements State    ${TC01_005.Scholarship_ActualHome}    hidden    timeout=5s    #ไม่ใช้งานเนื่องจากผลลัพธ์ตรงข้าม
