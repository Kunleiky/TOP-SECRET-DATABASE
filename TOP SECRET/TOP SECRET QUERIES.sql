create database top_secret2;
use top_secret2;

create table seceret_agents (agent_id int primary key, first_name varchar (50), 
last_name varchar(50), salary int, codename varchar (20), 
country varchar (80), organisation char (3),  knows_kung_fu varchar(10));

create table missions (mission_id int, mission varchar (300), agent_id int, year int,
foreign key (agent_id) references seceret_agents(agent_id));


select * from seceret_agents;
select * from missions;