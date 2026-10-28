*** Variables ***
# หน้า Login
${ssm_out.Username_Input}    xpath=//input[@name='j_username']
${ssm_out.Password_Input}    xpath=//input[@name='j_password']
${ssm_out.Login_Button}    xpath=//button[@type='button'][contains(., 'เข้าสู่ระบบ')]

# จัดการข้อมูล
${ssm_out.ProfileManage_Button}    xpath=//button[contains(@onclick, 'btnedit_Click')]
${ssm_out.District_Input}    xpath=//input[@name='IDCardDetail_District'][@type='text']
${ssm_out.ProfileEdit_Button}    xpath=//*[@id='e_submit']
${ssm_out.ProfileConfirm_Button}    xpath=//button[@name='confirm' and contains(., 'ยืนยัน')]
${ssm_out.ProfileView_Button}    xpath=//button[contains(@onclick, 'btnInfo_Click')]
${ssm_out.SelectLastData_Table}    xpath=//tbody/tr[1]/td[1]
${ssm_out.DocIDCard_LinkDownload}    xpath=//a[text()='testdata_pic.png']
${ssm_out.DocIDCard_AddFile}    xpath=//*[@id='add_IDCard']
${ssm_out.DocIDCard_DeleteFile}    xpath=//*[@id='del_IDCard']
${ssm_out.DocIDCard_ConfirmDelete}    xpath=//*[@id='ContentModalSubmit']/div[3]/button[1]
${ssm_out.DocIDCard_InputFile}    xpath=//*[@id='IDCardInputFile']

# รายละเอียดการศึกษาทุน
${ssm_out.Scholarship_Tab}    xpath=//*[text()='ทุนการศึกษา']
${ssm_out.SchAddDoc_Button}    xpath=//*[contains(., 'ทุนของฉัน')][contains(., '2020')]//a[contains(@class, 'btn-ssm-success')]
${ssm_out.SchAddData_Button}    xpath=//button[@id='addProgress']
${ssm_out.SchType_Dropdown}    xpath=//*[@id='SaveFileID']
${ssm_out.SchYear_Dropdown}    xpath=//*[@id='Year']
${ssm_out.SchTerm_Dropdown}    xpath=//*[@id='TermID']
${ssm_out.SchDetailAddDoc_Button}    xpath=//*[@id='add_ProgressFile']
${ssm_out.SchDetailAddData_Button}    xpath=//*[@id='e_add']
${ssm_out.SchDetailAddImport_Button}    xpath=//input[@type='file']
${ssm_out.SchDetailSaveFile_Button}    xpath=//button[@id='ProgressFileSave']
${ssm_out.SchDetailAddConfirm_Button}    xpath=//button[@name='confirm'][contains(., 'ยืนยัน')]

# ข่าวประชาสัมพันธ์
${ssm_out.News_Tab}    xpath=//*[text()='ข่าวประชาสัมพันธ์']
${ssm_out.NewsSelect_Table}    xpath=//*[@id='tblRequest']//label[contains(., 'แจ้งผลการรับทุนการศึกษา')]
${ssm_out.NewsDoc_LinkDownload}    xpath=//*[starts-with(@id, 'getFile-')]

# ติดตามการจ่ายเงิน
${ssm_out.PaySum_Tab}    xpath=//*[text()='ติดตามการจ่ายเงิน']
${ssm_out.PaySumPay_Button}    xpath=//*[@id='tblRequest']//tbody/tr[1]/td[8]/button
${ssm_out.PaySumDetailAdd_Button}    xpath=//*[@id='btnAdd']
${ssm_out.PaySumDetailPaidAmount_Input}    xpath=//*[@id='TxtPaidAmountTHB']
${ssm_out.PaySumDetailAddRecord_Button}    xpath=//*[@id='ContentModal']/div[3]/button[1]
${ssm_out.PaySumDetailAddConfirm_Button}    xpath=//button[@name='confirm'][contains(., 'บันทึกข้อมูล')]
${ssm_out.PaySumDetail_ActualDate}    xpath=//*[@id='tblRequest']//tbody/tr[1]/td[3]
${ssm_out.PaySumDetailCancel_Button}    xpath=//*[@id='tblRequest']//tbody/tr[1]/td[5]/button
${ssm_out.PaySumDetailCancelConfirm_Button}    xpath=//button[@name='confirm'][contains(., 'ยืนยัน')]
${ssm_out.PaySumDetailSortStatus_Button}    xpath=//*[@id='tblRequest']//thead/tr/th[5]
