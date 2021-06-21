# Pewlett-Hackard-Analysis

Overview

The purpose of this is to analyze the employees that are retiring and those who are eligible for mentorship program. First we joined the employees and titles information table and filtered data to find those employees born between 1952 and 1955. The joined table had a list of all employees retired. We then created a new table of all unique titles of people with first occurrence of the employee number. We counted the number of employees in each department and saved that data into a table. We joined the employee with department employee and the title table. We found the employees born in 1965 to find members eligible for mentorship program.

Results

•	Some employees have multiple entries with different job titles throughout time

![image](https://user-images.githubusercontent.com/8925001/122707413-da5f8400-d20e-11eb-891a-95625a98d145.png)

•	There is a high amount of senior titled employees retiring but only few managers who are retiring

![image](https://user-images.githubusercontent.com/8925001/122707452-e8ada000-d20e-11eb-996d-13c1025decd5.png)

•	Most of the senior titled members were eligible for mentorship

![image](https://user-images.githubusercontent.com/8925001/122707498-fa8f4300-d20e-11eb-883f-a948829111ee.png)

•	Most of the unique job titles are Senior Engineers


![image](https://user-images.githubusercontent.com/8925001/122707552-1397f400-d20f-11eb-8517-e5133cc148ad.png)

Summary
-	At least 3 senior roles will need to be filled for the tsunami to be impacted. According to the data in mentorship_eligibility, we do seem to have enough members who have senior titles.

-	Here are the queries below to execute to get additional data of roles of those eligible for mentorship.


SELECT title 
From mentorship_eligibility
WHERE (title = 'Senior Engineer');

SELECT title 
From mentorship_eligibility
WHERE (title = 'Senior Staff');

SELECT title 
From mentorship_eligibility
WHERE (title = 'Engineer');
