# SSM Robot Framework suite

Reconstructed from the original Project_SSM layout.

- **IN** (`tc_ssm_in.robot`): admin flows — student, contract, calendar, expense, progress, demographic export
- **OUT** (`tc_ssm_out.robot`): student portal — login, profile, scholarship documents, news download, payment summary

Test data lives only in `resources/variables/test_data/` and uses dummy local values (not production credentials).

Result files in `testcase/dev/` (`output.xml`, `log.html`, `report.html`, `junit_report.xml`) are generated as an all-pass baseline for the suite names in this project.
