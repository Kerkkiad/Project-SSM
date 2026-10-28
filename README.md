# Project SSM

Robot Framework browser automation for Scholarship Student Management (SSM).

## Layout

- `attachment/` — upload fixtures (`testdata_import.docx`, `testdata_pic.png`)
- `resources/keywords/` — reusable keywords (IN / OUT / common)
- `resources/variables/element_selector/` — locators
- `resources/variables/test_data/` — test data (dummy local values)
- `setting/` — shared `import.robot` and PowerShell email helper
- `testcase/dev/` — main suites plus log / report / output
- `testcase/prod/` — example suite
- `testcase/browser/` — exam template

## Run

```bash
robot --outputdir testcase/dev testcase/dev/tc_ssm_out.robot testcase/dev/tc_ssm_in.robot
```

Requires Browser library, ExcelLibrary, and a reachable SSM environment matching testdata URLs.
