*** Keywords ***
[SSM_OUT][Profile] คลิกปุ่ม จัดการ
    Browser.Click    ${ssm_out.ProfileManage_Button}

[SSM_OUT][Profile] กรอกข้อมูล เขต
    Browser.Fill Text    ${ssm_out.District_Input}    ${ssm_out.DateOnlyNow}

[SSM_OUT][Profile] คลิกปุ่ม แก้ไข ข้อมูล
    Browser.Click    ${ssm_out.ProfileEdit_Button}

[SSM_OUT][Profile] คลิกปุ่ม ยืนยัน การแก้ไขข้อมูล
    Browser.Click    ${ssm_out.ProfileConfirm_Button}

[SSM_OUT][AssertionHome] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าแรก
    Wait For Elements State    ${TC01_002.Profile_ActualHome}    visible    timeout=8s
    # Wait For Elements State    ${TC01_002.Profile_ActualHome}    hidden    timeout=5s    #ไม่ใช้งานเนื่องจากผลลัพธ์ตรงข้าม

[SSM_OUT][Profile] คลิกปุ่ม View
    Browser.Click    ${ssm_out.ProfileView_Button}

[SSM_OUT][Profile] คลิกเลือกข้อมูล บนตาราง
    Browser.Click    ${ssm_out.SelectLastData_Table}

[SSM_OUT][Profile] ตรวจสอบ Assertion ข้อมูลบนตารางเป็น ข้อมูล ที่แก้ไข
    Get Text    ${TC01_004.Profile_ActualDistrict2}    ==    ${ssm_out.DateOnlyNow}

[SSM_OUT][Profile] คลิก LinkDownload ไฟล์แนบ บัตรประจำตัว
    Browser.Click    ${ssm_out.DocIDCard_LinkDownload}

[SSM_OUT][Profile] ลบไฟล์เอกสารบัตรประจำตัว
    Browser.Click    ${ssm_out.DocIDCard_DeleteFile}

[SSM_OUT][Profile] เพิ่มไฟล์เอกสารบัตรประจำตัว
    Browser.Click    ${ssm_out.DocIDCard_AddFile}
    Upload File By Selector    ${ssm_out.DocIDCard_InputFile}    ${TC01_003.IDCard_PathImport}

[SSM_OUT][Profile] คลิกปุ่มยืนยันการลบไฟล์
    Browser.Click    ${ssm_out.DocIDCard_ConfirmDelete}
