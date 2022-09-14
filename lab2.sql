# USE lab2;

# SELECT * from details

# Question 1
# SELECT * from details WHERE age >= 40 && age <= 50;

# Question 2
# SELECT * from details WHERE hours >= 10 && hours <= 15;

# Question 3
# SELECT * from details WHERE firstName LIKE '%e%'
# % are wildcards of any amount

# Question 4
# SELECT * from details WHERE lastName LIKE '_u%';
# _ are wildcards of one unit

# Question 5
# SELECT * from details WHERE firstName LIKE '%n' && char_length(firstName) = 4;
# SELECT * from details WHERE firstName LIKE 'J%' && char_length(firstName) = 4;
# SELECT * from details WHERE char_length(firstName) = 3;
# SELECT * from details WHERE char_length(firstName) > 4;

# Question 6
#select * from details where gender = 'F'
# SELECT * from details WHERE gender = 'F' && age LIKE '%3%';
 
# Question 7
# SELECT count(gender) FROM details WHERE gender LIKE 'F';

# Question 8
# SELECT count(gender) FROM details WHERE gender LIKE 'M';

# Question 9
# SELECT AVG(age) AS AverageAge FROM details WHERE gender LIKE 'F';
 
# Question 10
# SELECT AVG(age) AS AverageAge FROM details WHERE gender LIKE 'M';# USE lab2;

# SELECT * from details

# Question 1
# SELECT * from details WHERE age >= 40 && age <= 50;

# Question 2
# SELECT * from details WHERE hours >= 10 && hours <= 15;

# Question 3
# SELECT * from details WHERE firstName LIKE '%e%'
# % are wildcards of any amount

# Question 4
# SELECT * from details WHERE lastName LIKE '_u%';
# _ are wildcards of one unit

# Question 5
# SELECT * from details WHERE firstName LIKE '%n' && char_length(firstName) = 4;
# SELECT * from details WHERE firstName LIKE 'J%' && char_length(firstName) = 4;
# SELECT * from details WHERE char_length(firstName) = 3;
# SELECT * from details WHERE char_length(firstName) > 4;

# Question 6
# SELECT * from details WHERE gender = 'F' && age LIKE '%3%';
 
# Question 7
# SELECT count(gender) FROM details WHERE gender LIKE 'F';

# Question 8
# SELECT count(gender) FROM details WHERE gender LIKE 'M';

# Question 9
# SELECT AVG(age) AS AverageAge FROM details WHERE gender LIKE 'F';
 
# Question 10
# SELECT AVG(age) AS AverageAge FROM details WHERE gender LIKE 'M';

#lab 2 part 2

#1
USE lab2;
#SELECT * from details
#SELECT MAX(age) from details;

#2
#SELECT MIN(age) from details;

#3
#SELECT AVG(hours) from details;

#4
#select sum(rate*hours) from details where gender like'F'

#5
#select sum(rate*hour) from details where gender like 'M'

#6
#select department, avg(age) from details group by department;


#dont do like that 
#select avg(age) from details where deparment like 'Design'


#7
#select position, avg(age), from details group by position;

#8 & 9
select department, COUNT(*)as total, 
  COUNT(case when details.gender='M' then 1 end) as male,
  COUNT(case when details.gender='F' then 1 end) as female 
  from details  group by department;
  
#10
select firstName,lastName,rate*hours as weekly from details group by firstName,lastName  order by weekly desc limit 3;
