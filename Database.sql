create or replace table brit_airways_data
(
num_passengers int,
sales_channel varchar(20),
trip_type varchar(20),
purchase_lead int,
length_of_stay int ,
flight_hour int ,
flight_day varchar(20),
route varchar(20),
booking_origin varchar(20),
wants_extra_baggage int ,
wants_preferred_seat int ,
wants_in_flight_meals int ,
flight_duration float,
booking_complete int 
);

select *
from table(information_schema.copy_history(table_name=>'brit_airways_data', start_time=> dateadd(hours, -1,current_timestamp())));


select * from brit_airways_data;
