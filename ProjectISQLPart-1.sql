--Project WorkLife Balance & Mental Health

use StudentMentalHealthDB1;
--selecting db

select name from sys.tables;
--showing total tables from db

select * from StudentData;
--feteching all data



select Gender,avg(Work_Pressure) as Avg_Work_Pressure from StudentData group by Gender;
--result 0 bcoz in our data , all are student
--find the average work pressure by gender
--data set foucus on student,that why work pressirus is 0
--that confirm analsysi primalry focus on acmidec related 



select count(Study_Satisfaction) as Student_less_than_3_Study_Satisfaction from StudentData where Study_Satisfaction<=3;
--count students with study satisfaction <=3
--there is 17097 signifcant number fall into category, indicating widespread issues with 
--study satisfaction


select top 10 * from StudentData order by Work_Study_Hours desc;
--show top 10 students with the highest work/study hours.
--student population that maybe at higher risk at burnout and mental health issues to excessive hours
--cgpa good on data & study statisfaction low,majority sucidal through,finacials stress

select Depression,round(avg(CGPA),2) as Avg_CGPA from StudentData group by Depression;
--Find the average CGPA of students with depression = 0 vs depression=1.
--the avg cgpa for student with depression is slightly lower than for those without.
--while not dramatic differnce, it suggest potention correlation b/w acamdiec pefromanac and menetal health



select count(*) as Student_With_Healthy_NO_Depression from StudentData where Dietary_Habits='Healthy' and Depression=0;
--realtionship b/w lifesytle and mental ehalth
--student with healthy dieaetry habit have highest avg study satisfaction
--barplot and piechart
--Count how many students have dietary habits = 'Healthy' and no depression.
--select Dietary_Habits,count(*) from Studentdata where Depression = 0 group by Dietary_Habits ;

select Sleep_Duration,Depression,count(*) as count_Per_Group from StudentData group by Sleep_Duration,Depression order by Sleep_Duration,Depression;
--clear link b/w sleep and depuression, a large num of student less than 5 hour of sleep report have depuress
--strong indicator that poor sleep ina majorcontributing factor to mental health struggles
--heatmap,barplot
--show the distribution of sleep duration categories across depressino status.

select id,degree from StudentData where Job_Satisfaction=0 and Depression=1;
--Find the students (id,degree) who have job satisfaction = 0 and depressio = 1
--data related student foucs,, so 0 for alsmost everyone
--this tell taht acamiec related fcatos are more releveant


select gender,avg(work_pressure) as avg_work_pressure from StudentData group by Gender having avg(work_pressure) > (select avg(Work_Pressure) from StudentData) ;
--list genders where the average work pressure is higher than the overall dataset average.

/* return null bcoz of we did not have any work_pressure data
SELECT AVG(work_pressure) FROM StudentData;*/


select degree,avg(cgpa) as Avg_CGPA from StudentData where Depression=1 group by degree having avg(cgpa) < 7.0 ;
-- find degree where the average cgpa of depressed students is lower than 6.0
-- there is not data having this type of condition

----------------------------------------------------------------

select degree,avg(cgpa) as Avg_CGPA,count(*) as student_count from StudentData where Depression=1 group by degree having avg(cgpa) < 8.0 order by Avg_CGPA;
--thsose degree with lower acamic performace
--requreiing acamidec support, counselin 
--indicating that acamic underpferformnae could be contributing factor
--to depression and hihglight a potential link b/w acamdiec avhieven and mental health challegenge

