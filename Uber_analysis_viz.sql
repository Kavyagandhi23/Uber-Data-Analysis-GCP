CREATE OR REPLACE TABLE `uber-data-analysis-kavya.uber_data_engineering_project.tbl_analytics` AS (
SELECT 
a.VendorID,
b.tpep_pickup_datetime,
b.tpep_dropoff_datetime,
c.passenger_count,
d.trip_distance,
e.rate_code_name,
f.pickup_latitude,
f.pickup_longitude,
g.dropoff_latitude,
g.dropoff_longitude,
h.payment_type_name,
a.fare_amount,
a.extra,
a.mta_tax,
a.tip_amount,
a.tolls_amount,
a.improvement_surcharge,
a.total_amount 

FROM `uber-data-analysis-kavya.uber_data_engineering_project.fact_table` a 
JOIN `uber-data-analysis-kavya.uber_data_engineering_project.datetime_dim` b 
ON a.datetime_id = b.datetime_id
JOIN `uber-data-analysis-kavya.uber_data_engineering_project.passenger_count_dim` c
ON a.passenger_count_id = c.passenger_count_id
JOIN `uber-data-analysis-kavya.uber_data_engineering_project.trip_distance_dim` d
ON a.trip_distance_id = d.trip_distance_id
JOIN `uber-data-analysis-kavya.uber_data_engineering_project.rate_code_dim` e
ON a.rate_code_id = e.rate_code_id
JOIN `uber-data-analysis-kavya.uber_data_engineering_project.pickup_location_dim` f
ON a.pickup_location_id = f.pickup_location_id
JOIN `uber-data-analysis-kavya.uber_data_engineering_project.drop_location_dim` g 
ON a.drop_location_id = g.drop_location_id
JOIN `uber-data-analysis-kavya.uber_data_engineering_project.payment_type_dim` h 
ON a.payment_type_id = h.payment_type_id
);