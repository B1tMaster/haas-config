select now()

select * from states
where domain = 'sensor' and entity_id like 'sensor.pws_wind_kph' and created < now() and created > current_date()
order by created desc

select * from states
where domain = 'sensor' and entity_id like 'sensor.pws_wind_kph' and created >= NOW() - INTERVAL 60 MINUTE
order by created desc


select domain, entity_id , CONVERT_TZ(created, 'UTC',  'Asia/Singapore') as created from states
where domain = 'sensor' and entity_id like 'sensor.pws_wind_kph' and created >= now() - INTERVAL 3000 MINUTE
order by created desc


select domain, entity_id , created from states
where domain = 'sensor' and entity_id like 'sensor.pws_wind_kph' and last_changed >= ADDDATE( UTC_TIMESTAMP(), INTERVAL -20 minute)
order by created desc



select avg(state) from states
where  entity_id = 'sensor.pws_wind_kph' and state != '0' and created >= ADDDATE( UTC_TIMESTAMP(), INTERVAL -30 minute)
group by entity_id

select state, entity_id from states
where  entity_id = 'sensor.pws_wind_kph' and state != '0' and created >= ADDDATE( UTC_TIMESTAMP(), INTERVAL -40 minute)
order  by entity_id


SELECT CURRENT_TIMESTAMP();

select max(created) from states limit 1;

 select now()  - INTERVAL 20 MINUTE

select CURRENT_TIMESTAMP('UTC')

select CURTIME()

select  utc_timestamp()

select ADDDATE( UTC_TIMESTAMP(), INTERVAL -20 minute)
select ADDDATE( UTC_TIMESTAMP(), INTERVAL -1 minute)


SELECT table_schema "database", Round(Sum(data_length + index_length) / 1024, 1) "value" FROM information_schema.tables WHERE table_schema="hass" GROUP BY table_schema