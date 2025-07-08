
--#######################  Task 1  #######################
SELECT first_name,last_name, gender FROM patients where gender='M';

--#######################  Task 2  #######################
SELECT first_name,last_name FROM patients where allergies is NULL;

--#######################  Task 3  #######################
SELECT first_name FROM patients where first_name LIKE 'C%';

--#######################  Task 4  #######################
SELECT first_name,last_name FROM patients where weight between 100 and 120

--#######################  Task 5  #######################
update  patients Set allergies='NKA' where allergies is NULL;

--#######################  Task 6  #######################
Select (first_name || ' ' || last_name) as full_name from patients;

--#######################  Task 7  #######################
SELECT
    first_name,
    last_name,
    CASE province_id
        WHEN 'ON' THEN 'Ontario'
        WHEN 'QC' THEN 'Quebec'
        WHEN 'BC' THEN 'British Columbia'
        WHEN 'AB' THEN 'Alberta'
        WHEN 'MB' THEN 'Manitoba'
        WHEN 'NB' THEN 'New Brunswick'
        WHEN 'NL' THEN 'Newfoundland and Labrador'
        WHEN 'NS' THEN 'Nova Scotia'
        WHEN 'PE' THEN 'Prince Edward Island'
        WHEN 'SK' THEN 'Saskatchewan'
        WHEN 'NT' THEN 'Northwest Territories'
        WHEN 'NU' THEN 'Nunavut'
        WHEN 'YT' THEN 'Yukon'
        ELSE province_id
        END AS full_province_name
FROM patients;

--#######################  Task 8  #######################
Select count(patient_id) from  patients where birth_date between '2010-01-01' and '2010-12-31'

--#######################  Task 9  #######################
select first_name, last_name, height from patients order by height desc limit 1

--#######################  Task 10  #######################
select * from patients where patient_id in (1,45,534,879,1000);

--#######################  Task 11  #######################
Select count(patient_id) from admissions;

--#######################  Task 12  #######################
select * from admissions where admission_date = discharge_date;

--#######################  Task 13  #######################
select patient_id, count(*) as total_admission from admissions where patient_id=579;

--#######################  Task 14  #######################
SELECT DISTINCT city FROM patients WHERE province_id = 'NS';

--#######################  Task 15  #######################
select first_name, last_name, birth_date from patients where height>160 and weight>70;

--#######################  Task 16  #######################
select first_name, last_name, allergies from patients where allergies is not NULL and city='Hamilton'


