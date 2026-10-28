*** Settings ***
Resource    ../../setting/import.robot

Test Setup    [Common][Login][IN] เปิด browser    ${ssm_in.url}
Test Teardown    Close Browser

*** Test Cases ***
TC02_001_ShareArea เลือกเปลี่ยน ShareArea เพื่อนักศึกษาใหม่
    [SSM_IN][SchStudent] คลิก เพิ่มข้อมูลนักศึกษา
    [SSM_IN][SchStudent] คลิก แถบขยายค้นหาจากชื่อ นักศึกษา
    [SSM_IN][SchStudent] กรอกข้อมูล รหัส นักศึกษา
    [SSM_IN][SchStudent] คลิก แถบขยายค้นหาจากชื่อ นักศึกษา (ModalSearch)
    [SSM_IN][SchStudent] คลิก เลือกนักศึกษษาที่ค้นหา
    [SSM_IN][SchStudent] คลิก ค้นหาถึงนักศึกษา (FormSearch)
    [SSM_IN][SchStudent] ตรวจสอบข้อมูล ชื่อ ที่แสดงบนนักศึกษาที่เพิ่ม
    Sleep    3s

TC02_003_SearchScholarshipInformation ค้นหานักศึกษาใหม่ได้
    [SSM_IN][SchStudent] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][SchStudent] กรอกข้อมูล ชื่อนักศึกษา
    [SSM_IN][SchStudent] คลิก ค้นหา
    Sleep    3s
    [SSM_IN][SchStudent] คลิกเลือกสรุปรายชื่อที่ระบบค้นพบ
    [SSM_IN][SchStudent] ตรวจสอบข้อมูล ชื่อ ที่แสดงบนนักศึกษาที่ค้นหา
    Sleep    3s

TC02_002_EditScholarshipInformation แก้ไขข้อมูลนักศึกษาใหม่ได้
    [SSM_IN][SchStudent] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][SchStudent] กรอกข้อมูล ชื่อนักศึกษา
    [SSM_IN][SchStudent] คลิก ค้นหา
    Sleep    3s
    [SSM_IN][SchStudent] คลิกเลือกสรุปรายชื่อที่ระบบค้นพบ
    [SSM_IN][SchStudent] กรอกข้อมูล Passport
    [SSM_IN][SchStudent] คลิก แก้ไขข้อมูลนักศึกษา
    [SSM_IN][SchStudent] คลิก ยืนยัน แก้ไขข้อมูลนักศึกษา
    [SSM_IN][SchStudent] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าค้นหา
    Sleep    3s

TC02_004_SearchScholarshipContract ค้นหาสัญญานักศึกษาใหม่
    [Common][Menu] เข้า Menu จัดการการให้ทุน (Menu)
    [Common][Menu] เข้า Menu จัดการการให้ทุน (Item)
    [SSM_IN][SchContract] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][SchContract] กรอกข้อมูล ชื่อนักศึกษา
    [SSM_IN][SchContract] คลิก ค้นหาข้อมูล
    [SSM_IN][SchContract] คลิกเลือกสรุปรายชื่อที่ระบบค้นพบ
    [SSM_IN][SchContract] ตรวจสอบข้อมูล ชื่อ ที่แสดงบนนักศึกษาที่ค้นหา

TC02_005_EditScholarshipContract แก้ไขสัญญานักศึกษาใหม่ได้
    [Common][Menu] เข้า Menu จัดการการให้ทุน (Menu)
    [Common][Menu] เข้า Menu จัดการการให้ทุน (Item)
    [SSM_IN][SchContract] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][SchContract] กรอกข้อมูล ชื่อนักศึกษา
    [SSM_IN][SchContract] คลิก ค้นหาข้อมูล
    [SSM_IN][SchContract] คลิกเลือกสรุปรายชื่อที่ระบบค้นพบ
    [SSM_IN][SchContract] ตรวจสอบข้อมูล ชื่อ ที่แสดงบนนักศึกษาที่ค้นหา
    [SSM_IN][SchContract] กรอกข้อมูลหมายเหตุ
    [SSM_IN][SchContract] คลิก บันทึกข้อมูลแก้ไข
    [SSM_IN][SchContract] คลิก ยืนยัน
    [SSM_IN][SchContract] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าค้นหา
    Sleep    3s

TC02_006_TrackingExpense คำนวณวันสุดท้ายของการให้ทุน
    [Common][Menu][OUT] เข้า Menu ติดตามการจ่ายเงินให้ทุน (Internal)
    [SSM_IN][SchCal] คลิก เพิ่มรายการ ติดตามการจ่ายเงิน
    [SSM_IN][SchCal] คลิก ค้นหา ชื่อนักศึกษา
    [SSM_IN][SchCal] กรอกข้อมูล นักศึกษา
    [SSM_IN][SchCal] คลิก ค้นหา นักศึกษา
    [SSM_IN][SchCal] คลิก เลือกชื่อนักเรียน ที่ค้นหา
    Sleep    3s
    [SSM_IN][SchCal] เลือกข้อมูล ประเภทการคำนวณจ่ายเงิน
    [SSM_IN][SchCal] เลือกข้อมูล ชื่อสัญญาทุน
    [SSM_IN][SchCal] คลิก เพิ่ม สัญญา
    [SSM_IN][SchCal] ตรวจสอบข้อมูล ชื่อนักศึกษา
    [SSM_IN][SchCal] ตรวจสอบข้อมูล วันที่เริ่มทำงาน
    [SSM_IN][SchCal] ตรวจสอบข้อมูล วันที่สิ้นสุดการจ่ายเงิน
    Sleep    3s

TC02_007_NFAPConnection เลือกเปลี่ยน ShareArea_NFAP สังกัดไม่ตรงกับนักศึกษาใหม่ได้
    [Common][Menu][IN] เข้า Menu ข้อมูลพื้นฐาน
    [Common][Menu][IN] เข้า Menu สรุปรายงานนักศึกษาให้ทุน
    [SSM_IN][SchExpenseSummary] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา พนักงาน
    [SSM_IN][SchExpenseSummary] กรอกข้อมูล รหัส นักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา นักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก รายชื่อนักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก ค้นหา
    [SSM_IN][SchExpenseSummary] คลิก แถบขยาย ข้อมูลค่าใช้จ่ายตามรายเดือน
    [SSM_IN][SchExpenseSummary] ตรวจสอบ Assertion ยอดเงิน รวม ค่าใช้จ่ายตามรายเดือน ถูกต้องหรือไม่
    Sleep    3s

TC02_008_ExchangeRate เลือกเปลี่ยน ShareArea_FI ตั้งอัตราแลกเปลี่ยน
    [Common][Menu][IN] เข้า Menu ข้อมูลพื้นฐาน
    [Common][Menu][IN] เข้า Menu สรุปรายงานนักศึกษาให้ทุน
    [SSM_IN][SchExpenseSummary] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา พนักงาน
    [SSM_IN][SchExpenseSummary] กรอกข้อมูล รหัส นักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา นักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก รายชื่อนักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก ค้นหา
    [SSM_IN][SchExpenseSummary] คลิก แถบขยาย ข้อมูลค่าใช้จ่าย ก.พ.
    [SSM_IN][SchExpenseSummary] คลิก เพิ่มข้อมูล
    [SSM_IN][SchExpenseSummary] เลือกข้อมูล วันที่ อัตราแลกเปลี่ยน
    [SSM_IN][SchExpenseSummary] เลือกข้อมูล วันที่ สกุลเงิน
    [SSM_IN][SchExpenseSummary] ตรวจสอบ Assertion ค่าเงิน USD ถูกต้องหรือไม่
    Sleep    5s

TC02_009_AddExpense เพิ่มข้อมูลค่าใช้จ่าย ก.พ. ได้
    [Common][Menu][IN] เข้า Menu ข้อมูลพื้นฐาน
    [Common][Menu][IN] เข้า Menu สรุปรายงานนักศึกษาให้ทุน
    [SSM_IN][SchExpenseSummary] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา พนักงาน
    [SSM_IN][SchExpenseSummary] กรอกข้อมูล รหัส นักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก แถบขยายค้นหา นักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก รายชื่อนักศึกษา
    [SSM_IN][SchExpenseSummary] คลิก ค้นหา
    [SSM_IN][SchExpenseSummary] คลิก แถบขยาย ข้อมูลค่าใช้จ่าย ก.พ.
    [SSM_IN][SchExpenseSummary] คลิก เพิ่มข้อมูล
    [SSM_IN][SchExpenseSummary] เลือกข้อมูล วันที่ อัตราแลกเปลี่ยน
    [SSM_IN][SchExpenseSummary] เลือกข้อมูล วันที่ สกุลเงิน
    [SSM_IN][SchExpenseSummary] ตรวจสอบ Assertion ค่าเงิน USD ถูกต้องหรือไม่
    [SSM_IN][SchExpenseSummary] เลือกข้อมูล จ่ายเงิน
    [SSM_IN][SchExpenseSummary] กรอกข้อมูล จำนวนเงิน
    [SSM_IN][SchExpenseSummary] คลิก เพิ่มข้อมูล ก.พ.
    [SSM_IN][SchExpenseSummary] คลิก ยืนยัน
    Sleep    10s

TC02_010_Report อ่าน Report ในระบบได้
    [Teardown]    Run Keyword And Ignore Error    [Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Delete file สำเร็จ
    [Common][Menu][IN] เข้า Menu ข้อมูลพื้นฐาน
    [Common][Menu][IN] เข้า Menu รายงานวิเคราะห์
    [SSM_IN][ReportAnalys] คลิกปุ่ม Export ข้อมูล Demographic
    [SSM_IN][Dgp] คลิกเลือก ประเภททุน
    [SSM_IN][Dgp] กรอกข้อมูลปี ถึง
    [Common][StartDownload][IN/OUT] คลิกเพื่อทำการดาวโหลดไฟล์    [SSM_IN][Dgp] คลิกปุ่ม Export To Excel
    [Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Download file สำเร็จ
    [SSM_IN][Dgp] ตรวจสอบข้อมูลรหัสนักศึกษา
    Sleep    5s

#ไม่สามารถรันจาก run TC01_005 กรณี run 005 ก่อนแล้ว fail
TC02_011_BOTShare ตรวจสอบรหัสนักศึกษา BOT-Share
    [Common][Menu][IN] เข้า Menu ข้อมูลพื้นฐาน
    [Common][Menu][IN] เข้า Menu รายงานความก้าวหน้า
    [SSM_IN][Progress] คลิกขยาย Section ค้นหาข้อมูล
    [SSM_IN][Progress] คลิก แถบขยายค้นหา พนักงาน
    [SSM_IN][Progress] กรอกข้อมูล รหัส นักศึกษา
    [SSM_IN][Progress] คลิก แถบขยายค้นหา นักศึกษา
    [SSM_IN][Progress] คลิก รายชื่อนักศึกษา
    [SSM_IN][Progress] คลิก ค้นหา
    [SSM_IN][Progress] เลือกค้นหาข้อมูล วันที่เริ่มต้น
    [SSM_IN][Progress] เลือกค้นหาข้อมูล สถานะ อยู่ระหว่างตรวจสอบ
    [SSM_IN][Progress] คลิก โลดตาม กรณีที่ ตรวจสอบข้อมูล
    [SSM_IN][Progress] เปลี่ยนข้อมูล สถานะ
    [SSM_IN][Progress] คลิก ตรวจสอบข้อมูล
    [SSM_IN][Progress] คลิก ยืนยัน
    Sleep    5s
    [SSM_IN][Progress] เลือกค้นหาข้อมูล สถานะ ตรวจสอบแล้ว
    [SSM_IN][Progress] คลิก ค้นหา
    [SSM_IN][Progress] ตรวจสอบข้อมูล ที่เปลี่ยน สถานะ
    [SSM_IN][Progress] ตรวจสอบข้อมูล ที่เปลี่ยน วันที่
    Sleep    5s
