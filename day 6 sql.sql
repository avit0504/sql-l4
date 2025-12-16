use world;
-- group by rule
-- not allows to use 'name' directly only able to use function



select region, avg(population) from country group by region;

-- count cities which have a population of more than 1 lac
-- where (sabse pehle execute) => group by => count()
select district, count(name) from city where population>100000 group by district;

select district, count(name) as Totalcity from city group by district;

-- get total country which got independence after 1950 in each continent
select continent, count(name) from country where indepyear>1950 group by continent;
/*
note:- where will be filter the only in the original table data 
Q what is the difference between having
where clause is use to filter the data from table
having use to filter the data on aggreate column like sum, count, max
*/

select continent, sum(population) from country group by continent
having sum(population)>100;

-- Q continent name, total population in continent only those country where life expectancy is 35.0


-- Q need to find out the total country for each govt form where the total number of country should be greater than 30
select governmentForm, count(name) from country group by governmentForm
having count(name) > 30;

-- Q need to find out the total country for each govt from only for the country having there capital greater than 30 
-- and total population greater then 3 lac 
select governmentForm, count(name), sum(population) from country 
where capital > 30
group by governmentForm
	having sum(population) > 300000;
    
select continent, region, count(name) from country group by continent, region;