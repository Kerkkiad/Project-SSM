*** Variables ***
#ข้อมูลเว็บไซต์
${ssm_in.url}    https://ssm-test.local/SSM/Administrator/SchStudent

#ข้อมูล หน้า จัดการข้อมูลนักศึกษา
${TC02_001.SchStudent_StdID}    10000001
${TC02_001.SchStudent_StdName}    นายทดสอบ ระบบ
${TC02_002.SchStudent_StdName}    นายทดสอบ แก้ไข
${TC02_003.Passport_Value}    ${{ datetime.datetime.now().strftime('%d/%m/%Y') }}

#ข้อมูล หน้า จัดการการให้ทุน
${TC02_004.SchContract_StdName}    นายทดสอบ ระบบ
${TC02_005.SchContract_NoteValue}    ${{ datetime.datetime.now().strftime('%d/%m/%Y') }}

#ข้อมูล หน้า ติดตามการจ่ายเงินให้ทุน
${TC02_006.SchCal_StdName}    นายทดสอบ ระบบ
${TC02_006.SchCal_PayCalType}    จ่ายตามปีการศึกษา
${TC02_006.SchCal_ContractName}    ทุนทดสอบ ปี 2569
${TC02_006.SchCal_StartWorkDay}    01/01/2020
${TC02_006.SchCal_LastWorkDay}    31/12/2020

#ข้อมูล หน้า สรุปรายงานนักศึกษาให้ทุน
${TC02_007.SchExpSum_EmpID}    90000001
${TC02_007.SchExpSum_ActualDateSum}    1,000.00 บาท
${TC02_008.SchExpSum_DateExc}    31/01/2026
${TC02_008.SchExpSum_Currency}    USD
${TC02_008.SchExpSum_ActualCurrency}    32.0000
${TC02_009.SchExpSum_PayBook}    จ่ายตรงนักเรียน
${TC02_009.SchExpSum_Amt}    100.00

#ข้อมูล หน้า รายงานความก้าวหน้า
${TC02_011.Progress_StdID}    10000001
${TC02_011.Progress_StatusSearch}    อยู่ระหว่างตรวจสอบ
${TC02_011.Progress_ActualStatus}    ตรวจสอบแล้ว
${ssm_in.DateNow}    ${{ datetime.datetime.now().strftime('%d/%m/%Y') }}
${TC02_011.Progress_StatusChange}    3

#หน้า Demographic
${TC02_010.Dgp_Type}    20
${TC02_010.Dgp_FromYear}    2020
${TC02_010.Dgp_ToYear}    2020
${TC02_010.Dgp_ID}    10000001
