*** Settings ***
Resource    ../../setting/import.robot

Test Setup    Run Keywords    [Common][Login][OUT] เปิด browser    ${ssm_out.url}    AND
...    [Common][Login][OUT] กรอกข้อมูล username และ password ที่กำหนด    ${ssm_out.Username}    ${ssm_out.Password}    AND
...    [Common][Login][OUT] คลิก เข้าสู่ระบบ
Test Teardown    Close Browser

*** Test Cases ***
TC01_001_Login สามารถเข้าสู่ระบบ SecureNet ได้
    [SSM_OUT][AssertionHome] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าแรก
    Sleep    5s

TC01_002_EditScholarStudent แสดงข้อมูลนักศึกษาบนตารางแก้ไขได้
    [SSM_OUT][Profile] คลิกปุ่ม จัดการ
    [SSM_OUT][Profile] กรอกข้อมูล เขต
    [SSM_OUT][Profile] คลิกปุ่ม แก้ไข ข้อมูล
    [SSM_OUT][Profile] คลิกปุ่ม ยืนยัน การแก้ไขข้อมูล
    [SSM_OUT][AssertionHome] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าแรก
    Sleep    5s

TC01_003_UploadFile Upload ไฟล์เอกสารได้
    [SSM_OUT][Profile] คลิกปุ่ม จัดการ
    [SSM_OUT][Profile] ลบไฟล์เอกสารบัตรประจำตัว
    [SSM_OUT][Profile] คลิกปุ่มยืนยันการลบไฟล์
    [SSM_OUT][Profile] เพิ่มไฟล์เอกสารบัตรประจำตัว
    Sleep    5s
    [SSM_OUT][Profile] คลิกปุ่ม แก้ไข ข้อมูล
    Sleep    5s
    [SSM_OUT][Profile] คลิกปุ่ม ยืนยัน การแก้ไขข้อมูล
    [SSM_OUT][AssertionHome] ตรวจสอบ Assertion สามารถแก้ไขได้และกลับสู่หน้าแรก
    Sleep    5s

TC01_004_CheckScholarStudent แสดงข้อมูลบนตารางนักศึกษา
    [SSM_OUT][Profile] คลิกปุ่ม View
    [SSM_OUT][Profile] คลิกเลือกข้อมูล บนตาราง
    [SSM_OUT][Profile] ตรวจสอบ Assertion ข้อมูลบนตารางเป็น ข้อมูล ที่แก้ไข
    [Common][StartDownload][IN/OUT] คลิกเพื่อทำการดาวโหลดไฟล์    [SSM_OUT][Profile] คลิก LinkDownload ไฟล์แนบ บัตรประจำตัว
    [Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Download file สำเร็จ
    [Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Delete file สำเร็จ
    Sleep    5s

TC01_005_EditScholarshipDetail สามารถแก้ไขรายละเอียดทุนได้
    [Common][Menu][OUT] เข้า Menu รายละเอียดการศึกษาทุน
    [SSM_OUT][Scholarship] คลิกปุ่ม เพิ่มเอกสาร
    [SSM_OUT][Scholarship] คลิกปุ่ม เพิ่มรายการ
    [SSM_OUT][Scholarship] เลือกข้อมูล ประเภท ปี ปีการศึกษา    &{TC01_005.Scholarship_DateDropdown}
    [SSM_OUT][Scholarship] อัปโหลดเอกสาร
    [SSM_OUT][Scholarship] บันทึกผลการอัปโหลด
    [SSM_OUT][Scholarship] คลิกปุ่ม เพิ่มรายการ
    [SSM_OUT][Scholarship] คลิกปุ่ม ยืนยัน
    [SSM_OUT][AssertionHome] ตรวจสอบ Assertion ต้องกลับหน้าที่ หน้าแรกที่รายละเอียดการศึกษาทุน
    Sleep    5s

TC01_006_NewsClick สามารถเปิดข่าวสารทุนการศึกษาได้
    [Common][Menu][OUT] เข้า Menu ข่าวประชาสัมพันธ์
    [SSM_OUT][News] คลิกเลือกข้อมูล ข่าวสาร ในตาราง
    [Common][StartDownload][IN/OUT] คลิกเพื่อทำการดาวโหลดไฟล์    [SSM_OUT][News] คลิก LinkDownload
    [Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Download file สำเร็จ
    [Common][DownloadFile][IN/OUT] ตรวจสอบ Assertion Delete file สำเร็จ
    Sleep    5s

TC01_007_AddPaySum สามารถบันทึกข้อมูลจ่ายเงินสดได้
    [Common][Menu][OUT] เข้า Menu ติดตามการจ่ายเงิน
    [SSM_OUT][PaySum] คลิกปุ่ม จ่ายเงิน รายการแรก
    Sleep    3s
    [SSM_OUT][PaySum] คลิกปุ่ม แจ้งว่าจ่ายเงินแล้วได้
    [SSM_OUT][PaySum] กรอกข้อมูล จำนวนเงินที่จ่ายแล้วได้
    [SSM_OUT][PaySum] คลิกปุ่ม เพิ่มรายการ
    [SSM_OUT][PaySum] คลิกปุ่ม บันทึกข้อมูล
    [SSM_OUT][PaySum] ตรวจสอบ Assertion ข้อมูลวันที่ต้องเป็นวันที่เพิ่มได้
    [SSM_OUT][PaySum] คลิก Sort สถานะ
    Sleep    8s
    [SSM_OUT][PaySum] คลิกปุ่ม ยกเลิก การจ่ายเงินแล้วได้
    [SSM_OUT][PaySum] คลิกปุ่ม ยืนยัน การยกเลิก การจ่ายเงินแล้วได้
    Sleep    5s
