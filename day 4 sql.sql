-- function 
/* set of statement 
code reusable
scalar function => row by row (result for ecah group)
multi line function => multiple line par apply and give one output 

scalar can apply : date, int, float , string
*/

-- string function
-- case conversion 

use world;
select name, continent, upper(name), lower(name) from country;

select name, continent, concat(continent,'-',code,'-','regex') from country;

-- concat with a seprate
select name, continent, concat_ws('-',continent, code,'regex') from country;

-- substr. (substring) => character extract based on the position 
select name, substr(name,1) from country;

-- this is from right to left
select name, substr(name,2,5) from country;

-- this is from left to right
select name, substr(name,-2) from country;

select name, substr(name,-5,3) from country;

-- Q) country name whose first character is same continent name
select name, continent, substr(name,1,1), substr(continent,1,1) from country
where substr(name,1,1) = substr(continent,1,1);

-- with substr
select name, continent, substr(name,1,3) from country
where substr(name,1,3)= 'Alg';

-- without substr
select name, continent from country
where name like 'Alg%';

-- instr => search position of character 
select name, instr(name,'e') from country;

-- length (byte use huaa)
-- to get total character
select name, char_length(name) from country;

-- trim (extra space yah phir character ko remove karna)
-- trim remove space from both side right and left
-- ltrim, rtrim
select '    yash   ';
select char_length('      yash      ');
select char_length(trim('      yash      '));

select trim(both 'g' from '      yagggshgggggg');

select name, trim(both 'a' from name) from country;
select name, trim(both 'A' from name) from country;

-- lpad and rpad - to create data of fixed characters
select name, population, lpad(population,9,'0') from country;