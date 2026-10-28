*** Variables ***
#ทั่วไป
${ssm_in.workspace}    xpath=//body
${ssm_in.Loading}    xpath=//div[@id='LayoutModalSpinner']

#เมนู Tab
${ssm_in.SchContract_Tab}    xpath=//a[contains(@class, 'dropdown-toggle') and contains(text(), 'จัดการทุนให้')]
${ssm_in.SchCal_Tab}    xpath=//a[contains(text(), 'ติดตามการให้ทุน') and @href='/SSM/Administrator/ScholarshipCalculate']
${ssm_in.ViewInformation_Tab}    xpath=//a[contains(@class, 'dropdown-toggle') and contains(text(), 'ข้อมูลพื้นฐาน')]

#เมนู Item Tab ข้อมูลพื้นฐาน
${ssm_in.SchContract_ItemTab}    xpath=//a[contains(@class, 'dropdown-item') and @href='/SSM/Administrator/SchContract?WMT']
${ssm_in.SchExpSum_ItemTab}    xpath=//a[contains(@class, 'dropdown-item') and @href='/SSM/Administrator/SchExpenseSummary']
${ssm_in.Progress_ItemTab}    xpath=//a[contains(@class, 'dropdown-item') and @href='/SSM/Admin/ScholarshipProgress']
${ssm_in.ReportAnalys_ItemTab}    xpath=//a[contains(@class, 'dropdown-item') and @href='/SSM/Admin/ScholarAnalysExl']

#หน้า จัดการข้อมูลนักศึกษา
${ssm_in.SchStudentAddNew_Button}    xpath=//*[@id='addStd']
${ssm_in.SchStudentAddSearchForm_Button}    xpath=//*[@id='e_SearchInput']
${ssm_in.SchStudentAddStdID_Input}    xpath=//*[@id='eStudentKeyword']
${ssm_in.SchStudentAddStdID_Button}    xpath=//*[@id='SearchInput']
${ssm_in.SchStudentAddSelectStd_Button}    xpath=//*[@id='tblAddStudent']//input[@name='AddInID'][@value='${TC02_001.SchStudent_StdID}']
${ssm_in.SchStudentAddSearchConfirm_Button}    xpath=//*[@id='btn-empList']
${ssm_in.SchStudentName_Input}    xpath=//*[@id='name']
${ssm_in.SchStudentSearchExpand_Form}    xpath=//*[@local-name()='label' and @id='search']
${ssm_in.SchStudentSearchStdName_Input}    xpath=//*[@id='sName']
${ssm_in.SchStudentSearchSearch_Button}    xpath=//*[@id='searchTable']
${ssm_in.SchStudentEditFirstStd_Button}    xpath=//*[@id='tblRequest']//tbody/tr[1]//button[contains(@onclick, 'btnEdit_Click')]
${ssm_in.SchStudentEditPassport_Input}    xpath=//*[@id='PassportID']
${ssm_in.SchStudentEditSubmit_Button}    xpath=//*[@id='e_submit']
${ssm_in.SchStudentEditConfirm_Button}    xpath=//button[@name='confirm' and text()='ยืนยัน']
${ssm_in.SchStudentModal_Form}    xpath=//*[@id='layoutModal']

#หน้า จัดการการให้ทุน
${ssm_in.SchContractSearchExpand_Form}    xpath=//*[@local-name()='label' and @id='search']
${ssm_in.SchContractSearchStdName_Input}    xpath=//*[@id='sName']
${ssm_in.SchContractSearchSearch_Button}    xpath=//*[@id='searchTable']
${ssm_in.SchContractFirstContract_Button}    xpath=//*[@id='tblRequest']//tbody/tr[1]//button[contains(@onclick, 'btnContract_Click')]
${ssm_in.SchContractStdName_Input}    xpath=//*[@id='StudentName']
${ssm_in.SchContractEditNote_Input}    xpath=//*[@id='Note']
${ssm_in.SchContractEditSubmit_Button}    xpath=//*[@id='addContract']
${ssm_in.SchContractEditConfirm_Button}    xpath=//button[@name='confirm' and text()='ยืนยัน']
${ssm_in.SchContractModal_Form}    xpath=//*[@id='layoutModal']

#หน้า ติดตามการจ่ายเงินให้ทุน
${ssm_in.SchCalAddCal_Button}    xpath=//*[@id='btnOpenModalAdd']
${ssm_in.SchCalAddSearchStd_Button}    xpath=//*[@id='eStudentEmp']//button[contains(., 'ค้นหา')]
${ssm_in.SchCalAddSearchStdID_Input}    xpath=//*[@id='PrepareKeyKeyword']
${ssm_in.SchCalAddSearchStdID_Button}    xpath=//*[@id='btnSearchPrepareKeyPreview']
${ssm_in.SchCalAddChooseStd_Button}    xpath=//*[@id='btnChooseEmp'][@SearchModal]
${ssm_in.SchCalAddPayCalType_Dropdown}    xpath=//*[@id='ddlScholPayCalType']
${ssm_in.SchCalAddSelectCalContract_Dropdown}    xpath=//*[@id='tempCalContractor']
${ssm_in.SchCalAddSelectCalContract_Button}    xpath=//*[@id='rowelContract']//button[contains(@class, 'btnAddTableRowOfContractFactor')]
${ssm_in.SchCalAddStartWorkDay_Input}    xpath=//*[@id='WorkToPayStartDateShow']
${ssm_in.SchCalAddShowLastDate_Text}    xpath=//*[@id='showLastDate']
${ssm_in.SchCalAddStdName_Text}    xpath=//*[@id='eStudentEmpName']

#หน้า สรุปรายงานนักศึกษาให้ทุน
${ssm_in.SchExpSumSearchExpand_Form}    xpath=//*[@local-name()='label' and @id='search']
${ssm_in.SchExpSumSearchEmpID_Button}    xpath=//button[@id='btnOpenModalChooseStudent']
${ssm_in.SchExpSumStdID_Input}    xpath=//input[@id='PrepareStudentKeyword']
${ssm_in.SchExpSumSearchStdID_Button}    xpath=//button[@id='btnSearchPrepareStudentPreview']
${ssm_in.SchExpSumShowStdID_Table}    xpath=//tbody[@id='tblChooseStudentPreviewSelectListBody']//td[contains(., '${TC02_007.SchExpSum_EmpID}')]
${ssm_in.SchExpSumAddStd_Button}    xpath=//button[@id='btnChooseStudentToSearchModal']
${ssm_in.SchExpSumSearchForm_Button}    xpath=//button[@id='searchTable']
${ssm_in.SchExpSumSearchDateExp_Button}    xpath=//button[@data-id='1721' and contains(@onclick, 'btnExpenseCompleted')]
${ssm_in.SchExpSumTotalSum_Text}    xpath=//tr[contains(@class, 'text-right')]//td[contains(text(), 'รวมทั้งหมด')]
${ssm_in.SchExpSumSearchPayGov_Button}    xpath=//button[@data-id='1722' and contains(@onclick, 'btnPayFromGov')]
${ssm_in.SchExpSumAddPayGov_Button}    xpath=//button[@id='addEmp']
${ssm_in.SchExpSumDateExc_Input}    xpath=//input[@id='ValueDate']
${ssm_in.SchExpSumCurrency_Dropdown}    xpath=//select[@id='Currency']
${ssm_in.SchExpSumRate_Input}    xpath=//input[@id='Rate']
${ssm_in.SchExpSumPay_Dropdown}    xpath=//select[@id='ScholarPayTypeFromGovID']
${ssm_in.SchExpSumAmt_Input}    xpath=//input[@id='Amt']
${ssm_in.SchExpenseAddGov_Button}    xpath=//button[@id='e_add_PayFromGov']
${ssm_in.SchExpenseConfirmGov_Button}    xpath=//button[@name='confirm' and text()='ยืนยัน']

#หน้า รายงานความก้าวหน้า
${ssm_in.PrgSearchExpand_Form}    xpath=//form[@role='search']//label[@id='search']
${ssm_in.PrgSearchEmpID_Button}    xpath=//button[@id='btnOpenModalChooseStudent']
${ssm_in.PrgStdID_Input}    xpath=//input[@id='PrepareStudentKeyword']
${ssm_in.PrgSearchStdID_Button}    xpath=//button[@id='btnSearchPrepareStudentPreview']
${ssm_in.PrgShowStdID_Table}    xpath=//tbody[@id='tblChooseStudentPreviewSelectListBody']//td[contains(., '${TC02_011.Progress_StdID}')]
${ssm_in.PrgAddStd_Button}    xpath=//button[@id='btnChooseStudentToSearchModal']
${ssm_in.PrgSearchForm_Button}    xpath=//button[@id='searchTable']
${ssm_in.PrgDateStart_Input}    xpath=//input[@id='sStartDate']
${ssm_in.PrgStatus_Dropdown}    xpath=//select[@id='sProgressStatus']
${ssm_in.PrgChgStatus_Dropdown}    xpath=//select[@id='ProgressStatusID']
${ssm_in.PrgVerify_Button}    xpath=//button[@data-page='SchProgress' and @onclick='btnOpenCheckModal_Click(this);']
${ssm_in.PrgConfirm_Button}    xpath=//button[@name='confirm' and text()='ยืนยัน']
${ssm_in.PrgStartDate_TableCol}    xpath=//table[@id='tblRequest']//tbody/tr[1]/td[7]
${ssm_in.PrgStatus_TableCol}    xpath=//table[@id='tblRequest']//tbody/tr[1]/td[8]

#หน้า รายงานวิเคราะห์
${ssm_in.RptAnalyExp_Button}    xpath=//button[@id='btnShowExcelReport']

#หน้า Demographic
${ssm_in.DgpType_Dropdown}    xpath=//select[@id='ddlType']
${ssm_in.DgpFromYear_Input}    xpath=//input[@id='txtFromYear']
${ssm_in.DgpToYear_Input}    xpath=//input[@id='txtToYear']
${ssm_in.DgpExp_Button}    xpath=//button[@id='btnExportReport']
