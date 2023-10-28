USE TOP_SECRET2;
SHOW TABLES;
DESCRIBE missions;
alter table seceret_agents
rename to secret_agents;

create table 
secret_agents_backup_restore
as select * from
secret_agents;


select * from
secret_agents;

-- Q1
select concat(first_name, last_name) as full_name, salary from
secret_agents
order by salary desc
limit 1;

update secret_agents
set first_name = "Johnson" 
where agent_id = 1;

select * from
secret_agents
where salary = max(salary);

update secret_agents
set codename = "Neo 2.0", salary =115000
where agent_id = 4;

select * from
secret_agents;


update secret_agents
set salary = salary *1.10;



update secret_agents
set knows_kung_fu = "TRUE"
where agent_id in (5,7);

update secret_agents
set codename = "Oracle"
where agent_id = 20;

select sum(salary) total_salary from secret_agents;

select count(agent_id) from secret_agents
where salary>= 100000;


select count(agent_id) from secret_agents
where salary< 100000;


select s.first_name,s.last_name, s.codename, m.*
from secret_agents as s right join missions m
using (agent_id);

select count(mission_id) from missions 
having count(year)<1;

select count(distinct agent_id) from missions
having count(mission_id)>=2;

select * from missions;

select count( distinct agent_id) from missions;

select country, count(agent_id) from secret_agents
group by country
order by count(agent_id) desc;

select organisation, count(agent_id) from secret_agents
group by organisation
order by count(agent_id) desc
limit 1;

select count(distinct country) from secret_agents;

-- SET sql_safe_updates = 0;

