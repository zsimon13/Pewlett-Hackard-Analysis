# Pewlett Hackard Emplyoee Retirement Analysis
## Overview of Project
Pewlett Hackard requested an analysis of current employees to determine how many were eligible for retirement and to identify how many poisitions may need te be filled in order to future proof the company. The idea of a mentorship program was suggested for retirement-eligible empployess to work part time in order to teach the new incoming employees. This analysis determined which roles in each department and a the number of them that could be effected by the anticipated "silver-tsunami".

## Results
In order to properly map relationships between data, an entitiy relationship diagram (ERD) was created. This would help provide a visual of the company's employee strcutre to the metadata.
![EmployeeDB](https://user-images.githubusercontent.com/102814578/172492861-a661f308-9c3f-45f8-a67a-1309df25bf2b.png)

From there the following pieces of data were compiled to determine the plan of action
1. Retirement eligible employees information
  - This table returns employees eligible for retirement based on age, their name, employee number, birth date, role and department and their start and end dates.
  - This table has the draw back of showing the same employee multiple times (if they changed roles) as well as employees that no longer work there. 
  - The table returned 133,774 rows in total
![retirement_titles](https://user-images.githubusercontent.com/102814578/172496362-76194da2-e3cc-454a-b895-8fbc0e0963ce.png)

2. Retirement eligible employees and their current title
  - This tables returned the same information as the one abouvem but was cleaned  to only show employees most recent title
  - This table returned 72456 rows in total
![unique_titles](https://user-images.githubusercontent.com/102814578/172496911-b040a832-e6c6-4293-8606-f3fe4690ac64.png)

3. Titles and count of retitring empoloyees
  - This table shows the title and amount of each title eligible for retirement.
  - This table returns 7 rows in total
  - ![retiring_titles](https://user-images.githubusercontent.com/102814578/172498254-a5c91145-d5d5-4853-9070-78288476c884.png)

4. Mentorship Program eligibile employees
  - This table returns currently employeed employees eligible for retirement based on age, their name, birth date, employee number, role and department and their start and end dates.
  - This table returned 1549 rows in total
![mentorship_eligibility](https://user-images.githubusercontent.com/102814578/172499098-93f1a071-aeb0-444c-afb1-7b32f2061423.png)

## Summary
uniqe
