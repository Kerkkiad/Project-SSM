*** Variables ***
#ข้อมูลเว็บไซต์
${ssm_out.url}    https://ssm-test.local/scholarship/student
${ssm_out.Username}    testuser
${ssm_out.Password}    RHVtbXlQYXNzMTIz
${ssm_out.PathDownload}    ${CURDIR}${/}..${/}..${/}..${/}attachment
${ssm_out.DateOnlyNow}    ${{ datetime.datetime.now().strftime('%d/%m/%Y') }}

#หน้าจัดการข้อมูล
${TC01_002.Profile_ActualHome}    xpath=//*[@id='DivformHide']
${TC01_003.IDCard_PathImport}    ${CURDIR}${/}..${/}..${/}..${/}attachment${/}testdata_pic.png
${TC01_004.Profile_ActualDistrict2}    xpath=//label[@for='IDCardDetail_District2']//following-sibling::div[1]

#หน้ารายละเอียดการศึกษาทุน
&{TC01_005.Scholarship_DateDropdown}    type=เอกสารผลการเรียน    year=2026    term=ภาคเรียนที่ 1
${TC01_005.Scholarship_PathImport}    ${CURDIR}${/}..${/}..${/}..${/}attachment${/}testdata_import.docx
${TC01_005.Scholarship_ActualHome}    xpath=//label[contains(@class, 'box-header') and contains(., 'บันทึกรายละเอียดการศึกษาทุน')]

#หน้าติดตามการจ่ายเงิน
${TC01_007.PaySumDetailPaidAmount_Data}    1000
