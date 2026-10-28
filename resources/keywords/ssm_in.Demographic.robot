*** Keywords ***
[SSM_IN][Dgp] คลิกเลือก ประเภททุน
    Browser.Select Options By    ${ssm_in.DgpType_Dropdown}    value    ${TC02_010.Dgp_Type}

[SSM_IN][Dgp] กรอกข้อมูลปี ถึง
    Browser.Type Text    ${ssm_in.DgpFromYear_Input}    ${TC02_010.Dgp_FromYear}
    Browser.Press Keys    ${ssm_in.DgpFromYear_Input}    Enter
    Browser.Type Text    ${ssm_in.DgpToYear_Input}    ${TC02_010.Dgp_ToYear}
    Browser.Press Keys    ${ssm_in.DgpToYear_Input}    Enter

[SSM_IN][Dgp] คลิกปุ่ม Export To Excel
    Browser.Click    ${ssm_in.DgpExp_Button}

[SSM_IN][Dgp] ตรวจสอบข้อมูลรหัสนักศึกษา
    ${actual_file_path}    Set Variable    ${ssm_out.PathDownload}/${custom_filename}
    [Common][Excel][IN/OUT] ตรวจสอบข้อมูลรหัสนักศึกษาในไฟล์    ${actual_file_path}    ${TC02_010.Dgp_ID}
