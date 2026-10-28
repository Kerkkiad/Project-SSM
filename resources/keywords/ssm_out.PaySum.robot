*** Keywords ***
[SSM_OUT][PaySum] คลิกปุ่ม จ่ายเงิน รายการแรก
    Browser.Click    ${ssm_out.PaySumPay_Button}

[SSM_OUT][PaySum] คลิกปุ่ม แจ้งว่าจ่ายเงินแล้วได้
    Browser.Click    ${ssm_out.PaySumDetailAdd_Button}

[SSM_OUT][PaySum] กรอกข้อมูล จำนวนเงินที่จ่ายแล้วได้
    Browser.Fill Text    ${ssm_out.PaySumDetailPaidAmount_Input}    ${TC01_007.PaySumDetailPaidAmount_Data}

[SSM_OUT][PaySum] คลิกปุ่ม เพิ่มรายการ
    Browser.Click    ${ssm_out.PaySumDetailAddRecord_Button}

[SSM_OUT][PaySum] คลิกปุ่ม บันทึกข้อมูล
    Browser.Click    ${ssm_out.PaySumDetailAddConfirm_Button}

[SSM_OUT][PaySum] ตรวจสอบ Assertion ข้อมูลวันที่ต้องเป็นวันที่เพิ่มได้
    Get Text    ${ssm_out.PaySumDetail_ActualDate}    ==    ${ssm_out.DateOnlyNow}

[SSM_OUT][PaySum] คลิกปุ่ม ยกเลิก การจ่ายเงินแล้วได้
    Browser.Click    ${ssm_out.PaySumDetailCancel_Button}

[SSM_OUT][PaySum] คลิกปุ่ม ยืนยัน การยกเลิก การจ่ายเงินแล้วได้
    Browser.Click    ${ssm_out.PaySumDetailCancelConfirm_Button}

[SSM_OUT][PaySum] คลิก Sort สถานะ
    Browser.Click    ${ssm_out.PaySumDetailSortStatus_Button}
