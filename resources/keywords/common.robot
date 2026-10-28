*** Keywords ***
[Common][Login][IN] เปิด browser
    [Arguments]    ${url}
    Set Browser Timeout    45 seconds
    New Browser    chromium    headless=False
    New Context    acceptDownloads=True
    New Page    ${url}

[Common][Login][OUT] เปิด browser
    [Arguments]    ${url}
    Set Browser Timeout    45 seconds
    New Browser    chromium    headless=False
    New Context    acceptDownloads=True
    New Page    ${url}

[Common][Login][OUT] กรอกข้อมูล username และ password ที่กำหนด
    [Arguments]    ${username}    ${password}
    ${Decoded_Password}    Evaluate    __import__('base64').b64decode($password).decode('utf-8').strip()
    # Log To Console    \n[DECODE] PasswordLen: ${Decoded_Password}
    Browser.Fill Text    ${ssm_out.Username_Input}    ${username}
    Browser.Type Secret    ${ssm_out.Password_Input}    $Decoded_Password

[Common][Login][OUT] คลิก เข้าสู่ระบบ
    Browser.Click    ${ssm_out.Login_Button}

[Common][Menu][OUT] เข้า Menu ทุนการศึกษา
    Browser.Click    ${ssm_out.Scholarship_Tab}

[Common][Menu][OUT] เข้า Menu ข่าวประชาสัมพันธ์
    Browser.Click    ${ssm_out.News_Tab}

[Common][Menu][OUT] เข้า Menu ติดตามการจ่ายเงิน
    Browser.Click    ${ssm_out.PaySum_Tab}

[Common][Menu][OUT] เข้า Menu รายละเอียดการศึกษาทุน
    Browser.Click    ${ssm_out.Scholarship_Tab}

[Common][StartDownload][IN/OUT] คลิกเพื่อทำการดาวโหลดไฟล์
    [Arguments]    ${action_keyword}
    ${dl_promise}    Promise To Wait For Download
    Run Keyword    ${action_keyword}
    ${file_obj}    Wait For    ${dl_promise}
    ${timestamp}    Get Current Date    result_format=%Y%m%d%S

    ${custom_filename}    Set Variable    ${timestamp}_${file_obj}[suggestedFilename]

    Set Test Variable    ${file_obj}
    Set Test Variable    ${custom_filename}
    OperatingSystem.Move File    ${file_obj}[saveAs]    ${ssm_out.PathDownload}/${custom_filename}

[Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Download file สำเร็จ
    OperatingSystem.File Should Exist    ${ssm_out.PathDownload}/${custom_filename}
    OperatingSystem.File Should Not Exist    ${file_obj}[saveAs]
    # OperatingSystem.File Should Not Exist    ${ssm_out.PathDownload}/${custom_filename}    #ไม่ใช้งานเนื่องจากผลลัพธ์ตรงข้าม

[Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Delete file สำเร็จ
    OperatingSystem.Remove File    ${ssm_out.PathDownload}/${custom_filename}
    Wait Until Keyword Succeeds    2s    0.5s    OperatingSystem.File Should Not Exist    ${ssm_out.PathDownload}/${custom_filename}
    # OperatingSystem.File Should Exist    ${ssm_out.PathDownload}/${custom_filename}    #ไม่ใช้งานเนื่องจากผลลัพธ์ตรงข้าม

[Common][Menu][IN] เข้า Menu จัดการการให้ทุน (Menu)
    Browser.Click    ${ssm_in.SchContract_Tab}

[Common][Menu] เข้า Menu จัดการการให้ทุน (Item)
    Browser.Click    ${ssm_in.SchContract_ItemTab}

[Common][Menu][OUT] เข้า Menu ติดตามการจ่ายเงินให้ทุน (Internal)
    Browser.Click    ${ssm_in.SchCal_Tab}

[Common][Menu][IN] เข้า Menu ข้อมูลพื้นฐาน
    Browser.Click    ${ssm_in.ViewInformation_Tab}

[Common][Menu][IN] เข้า Menu สรุปรายงานนักศึกษาให้ทุน
    Browser.Click    ${ssm_in.SchExpSum_ItemTab}

[Common][Menu][IN] เข้า Menu รายงานความก้าวหน้า
    Browser.Click    ${ssm_in.Progress_ItemTab}

[Common][Menu][IN] เข้า Menu รายงานวิเคราะห์
    Browser.Click    ${ssm_in.ReportAnalys_ItemTab}

[Common][Excel][IN/OUT] ตรวจสอบข้อมูลรหัสนักศึกษาในไฟล์
    [Arguments]    ${file_Path}    ${Expected_ID}
    Open Excel Document    ${file_Path}    doc_ID=Report1
    ${Column_Data}    Read Excel Column    1    sheet_name=data
    ${Str_Expected}    Convert To String    ${Expected_ID}
    Close All Excel Documents
    List Should Contain Value    ${Column_Data}    ${Str_Expected}
