# Pewlett Hackard Emplyoee Retirement Analysis
## Overview of Project
Pewlett Hackard requested an analysis of current employees to determine how many were eligible for retirement and to identify how many poisitions may need te be filled in order to future proof the company. The idea of a mentorship program was suggested for retirement-eligible empployees to work part time in order to teach the new incoming employees. This analysis determined which roles in each department, and a the number of roles that could be effected by the anticipated "silver-tsunami".

## Results
In order to properly map relationships between the data, an entitiy relationship diagram (ERD) was created. This would help provide a visual connection of the company's employee strcutre to the metadata.

![EmployeeDB](https://user-images.githubusercontent.com/102814578/172492861-a661f308-9c3f-45f8-a67a-1309df25bf2b.png)

From there the following pieces of data were compiled to determine the plan of action
### 1. Retirement eligible employees information
  - This table returns employees eligible for retirement based on age, their name, employee number, birth date, role and department and their start and end dates.
  - This table has the draw back of potentially showing the same employee multiple times (if they changed roles) as well as employees that no longer work there. 
  - The table returned 133,774 rows in total
  
![retirement_titles](https://user-images.githubusercontent.com/102814578/172496362-76194da2-e3cc-454a-b895-8fbc0e0963ce.png)

### 2. Retirement eligible employees and their current title
  - This table returned the same information as the one above, but was cleaned  to only show employee's most recent title
  - This table returned 72,456 rows in total
  
![unique_titles](https://user-images.githubusercontent.com/102814578/172496911-b040a832-e6c6-4293-8606-f3fe4690ac64.png)

### 3. Titles and count of retirement eligible empoloyees
  - This table shows the title and amount of each title eligible for retirement.
  - This table returned 7 rows in total
  
![retiring_titles](https://user-images.githubusercontent.com/102814578/172961475-66d5e775-cf6d-4a98-961b-977060663f90.png)

### 4. Mentorship Program eligibile employees
  - This table returned currently employeed employees eligible for retirement based on age, their name, birth date, employee number, role and department and their start and end dates. It should be noted that the end dates show'9999-01-01' as all employees in this table are currently employeed.
  - This table returned 1,549 rows in total
  
![mentorship_eligibility](https://user-images.githubusercontent.com/102814578/172499098-93f1a071-aeb0-444c-afb1-7b32f2061423.png)

## Summary
The total amount of employees eligible for retirement is 72,456. 

![sum_ret](https://user-images.githubusercontent.com/102814578/172981008-2dd46f2d-6fd0-4152-aebf-fbd84878e6c8.png)

This is a substantial amount of roles that could need to be filled. Of those roles, 54,443 are senior level or leadership roles (which would be the most qualified roles for a mentoring position).
### Senior Roles

![Lead_count](https://user-images.githubusercontent.com/102814578/172965683-900ddb4c-8f02-42d5-bd92-95d5c28d6054.png)

In order for the mentorship program to work, employees would have to maintain a reasonable amount of students. This would ideally be less than 5 students for every 1 mentor. Any more than 5 students would start to develop a large work-load, and would be a lot to ask of a mentor to handle on a part-time basis effectively. Given that only 1,549 employees are mentorship eligible, every mentor would have to take on about 35 students. Two logical options could be as follows:
1. Turn the mentorship program into a class-style program. This would entail the mentors soley giving classes to a group of students rather than mentor them closely AND continue day-to-day work. New employees would be able to begin work while mentors provided insight on th ejob, skills and company culture. 
2. Look to higher a mixture of both enrty-level and senior level employees. Entry level employess could partake in the mentorship program, allowing for smaller groups of students per each mentor, where senior level employees would be able to hit the ground running and alleviate some of the anticipated work load left.
