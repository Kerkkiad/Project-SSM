*** Settings ***
Library    Browser
Library    OperatingSystem
Library    ExcelLibrary
Library    Collections
Library    DateTime
# || ==========================| Keywords |========================== ||
Resource    ../resources/keywords/common.robot
Resource    ../resources/keywords/ssm_out.Profile.robot
Resource    ../resources/keywords/ssm_out.Scholarship.robot
Resource    ../resources/keywords/ssm_out.News.robot
Resource    ../resources/keywords/ssm_out.PaySum.robot
Resource    ../resources/keywords/ssm_in.SchStudent.robot
Resource    ../resources/keywords/ssm_in.SchContract.robot
Resource    ../resources/keywords/ssm_in.SchCal.robot
Resource    ../resources/keywords/ssm_in.SchExpenseSummary.robot
Resource    ../resources/keywords/ssm_in.Progress.robot
Resource    ../resources/keywords/ssm_in.ReportAnalys.robot
Resource    ../resources/keywords/ssm_in.Demographic.robot
# || ==========================| Variables |========================== ||
# Element Selector
Resource    ../resources/variables/element_selector/selector_ssm_out.robot
Resource    ../resources/variables/element_selector/selector_ssm_in.robot
# Test Data
Resource    ../resources/variables/test_data/testdata_ssm_out.robot
Resource    ../resources/variables/test_data/testdata_ssm_in.robot
