*** Keywords ***
[SSM_IN][SchExpenseSummary] คลิกขยาย Section ค้นหาข้อมูล
    Browser.Wait For Load State    networkidle    timeout=15s
    Browser.Click    ${ssm_in.SchExpSumSearchExpand_Form}

[SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา พนักงาน
    Browser.Click    ${ssm_in.SchExpSumSearchEmpID_Button}

[SSM_IN][SchExpenseSummary] กรอกข้อมูล รหัส นักศึกษา
    Browser.Fill Text    ${ssm_in.SchExpSumStdID_Input}    ${TC02_007.SchExpSum_EmpID}

[SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา นักศึกษา
    Browser.Click    ${ssm_in.SchExpSumSearchStdID_Button}

[SSM_IN][SchExpenseSummary] คลิก รายชื่อนักศึกษา
    Browser.Wait For Elements State    ${ssm_in.SchExpSumShowStdID_Table}    visible    timeout=30s
    Browser.Click    ${ssm_in.SchExpSumAddStd_Button}

[SSM_IN][SchExpenseSummary] คลิก ค้นหา
    Browser.Click    ${ssm_in.SchExpSumSearchForm_Button}

[SSM_IN][SchExpenseSummary] คลิก แถบขยาย ข้อมูลค่าใช้จ่ายตามรายเดือน
    Browser.Click    ${ssm_in.SchExpSumSearchDateExp_Button}

[SSM_IN][SchExpenseSummary] ตรวจสอบ Assertion ยอดเงิน รวม ค่าใช้จ่ายตามรายเดือน ถูกต้องหรือไม่
    Browser.Get Text    ${ssm_in.SchExpSumTotalSum_Text}    contains    ${TC02_007.SchExpSum_ActualDateSum}
    # Browser.Get Text    ${ssm_in.SchExpSumTotalSum_Text}    not contains    ${TC02_007.SchExpSum_ActualDateSum}    #ไม่ใช้งานเนื่องจากผลลัพธ์ตรงข้าม

[SSM_IN][SchExpenseSummary] คลิก แถบขยาย ข้อมูลค่าใช้จ่าย ก.พ.
    Browser.Click    ${ssm_in.SchExpSumSearchPayGov_Button}

[SSM_IN][SchExpenseSummary] คลิก เพิ่มข้อมูล
    Browser.Click    ${ssm_in.SchExpSumAddPayGov_Button}

[SSM_IN][SchExpenseSummary] เลือกข้อมูล วันที่ อัตราแลกเปลี่ยน
    Browser.Fill Text    ${ssm_in.SchExpSumDateExc_Input}    ${TC02_008.SchExpSum_DateExc}

[SSM_IN][SchExpenseSummary] เลือกข้อมูล วันที่ สกุลเงิน
    Browser.Select Options By    ${ssm_in.SchExpSumCurrency_Dropdown}    text    ${TC02_008.SchExpSum_Currency}

[SSM_IN][SchExpenseSummary] ตรวจสอบ Assertion ค่าเงิน USD ถูกต้องหรือไม่
    Browser.Get Property    ${ssm_in.SchExpSumRate_Input}    value    ==    ${TC02_008.SchExpSum_ActualCurrency}
    # Browser.Get Property    ${ssm_in.SchExpSumRate_Input}    value    !=    ${TC02_008.SchExpSum_ActualCurrency}    #ไม่ใช้งานเนื่องจากผลลัพธ์ตรงข้าม

[SSM_IN][SchExpenseSummary] เลือกข้อมูล จ่ายเงิน
    Browser.Select Options By    ${ssm_in.SchExpSumPay_Dropdown}    text    ${TC02_009.SchExpSum_PayBook}

[SSM_IN][SchExpenseSummary] กรอกข้อมูล จำนวนเงิน
    Browser.Fill Text    ${ssm_in.SchExpSumAmt_Input}    ${TC02_009.SchExpSum_Amt}

[SSM_IN][SchExpenseSummary] คลิก เพิ่มข้อมูล ก.พ.
    Browser.Click    ${ssm_in.SchExpenseAddGov_Button}

[SSM_IN][SchExpenseSummary] คลิก ยืนยัน
    Browser.Click    ${ssm_in.SchExpenseConfirmGov_Button}
