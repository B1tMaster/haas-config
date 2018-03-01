--Average Wind over last 20 mins
select avg(state) as avr_wind_20m from states
where  entity_id = 'sensor.pws_wind_kph' and state != '0' and created >= ADDDATE( UTC_TIMESTAMP(), INTERVAL -180 minute)
group by entity_id

--Average Gust over last 20 mins
select avg(state) avg_wind_gust_20m from states
where  entity_id = 'sensor.pws_wind_gust_kph' and state != '0' and created >= ADDDATE( UTC_TIMESTAMP(), INTERVAL -180 minute)
group by entity_id


-- all wind data for last 30 mins
select * from states
where  (entity_id = 'sensor.pws_wind_kph' OR entity_id = 'sensor.pws_wind_gust_kph' )  and created >= ADDDATE( UTC_TIMESTAMP(), INTERVAL -30 minute)
order by created desc


-- all data for last 30 mins
select * from states
where  created >= ADDDATE( UTC_TIMESTAMP(), INTERVAL -40 minute)
order by created desc

select * from states
order by created desc
limit 30