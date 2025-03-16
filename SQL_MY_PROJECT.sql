/* create database machin_downtime */
create database machin_downtime ;

/*use database */
use machin_downtime ;

/* NUMBERS OF ROWS IN OUR DATASET */
SELECT COUNT(*) AS NUM_ROW
FROM machine_downtime;

/* NUMBEER OF COLUMNS IN OUR DATASET */
SELECT COUNT(*) AS NUM_COL
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'machine_downtime';

/* Count the number of machine */
select Machine_ID ,count(Machine_ID) as No_of_Machine
from machine_downtime
group by Machine_ID;

/*  Count the number of Assembly line number */
select Assembly_Line_No ,count(Assembly_Line_No) as No_of_Assembly_Line
from machine_downtime
group by Assembly_Line_No;

/* Count of number of Machine downtime */
select Downtime , count(Downtime) as Number_of_Downtime
from machine_downtime
group by Downtime;

/* statistical analysis (count, mean, min, max, and standard deviation) on numerical columns */

/*General Statistics */
SELECT 
    COUNT(*) AS total_records
FROM Machine_Downtime;

/*  Hydraulic Pressure Analysis */
SELECT AVG(Hydraulic_Pressure_bar) AS avg_hydraulic_pressure 
FROM Machine_Downtime;

SELECT MIN(Hydraulic_Pressure_bar) AS min_hydraulic_pressure 
FROM Machine_Downtime;

SELECT MAX(Hydraulic_Pressure_bar) AS max_hydraulic_pressure 
FROM Machine_Downtime;

SELECT STDDEV(Hydraulic_Pressure_bar) AS stddev_hydraulic_pressure 
FROM Machine_Downtime;

SELECT 
    MAX(Hydraulic_Pressure_bar) - MIN(Hydraulic_Pressure_bar) AS pressure_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Hydraulic_Pressure_bar) AS Hydraulic_Pressure_variance_pop, 
    VAR_SAMP(Hydraulic_Pressure_bar) AS Hydraulic_Pressure_variance_samp
FROM Machine_Downtime;

/* Coolant Pressure Analysis */
SELECT AVG(Coolant_Pressure_bar) AS avg_coolant_pressure 
FROM Machine_Downtime;
 
 SELECT MIN(Coolant_Pressure_bar) AS min_coolant_pressure 
FROM Machine_Downtime;

SELECT MAX(Coolant_Pressure_bar) AS max_coolant_pressure 
FROM Machine_Downtime;

SELECT STDDEV(Coolant_Pressure_bar) AS stddev_coolant_pressure 
FROM Machine_Downtime;

SELECT 
    MAX(Coolant_Pressure_bar) - MIN(Coolant_Pressure_bar) AS pressure_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Coolant_Pressure_bar) AS Coolant_Pressure_variance_pop, 
    VAR_SAMP(Coolant_Pressure_bar) AS Coolant_Pressure_variance_samp
FROM Machine_Downtime;



/* Air System Pressure Analysis */

SELECT AVG(Air_System_Pressure_bar) AS avg_air_pressure 
FROM Machine_Downtime;

SELECT MIN(Air_System_Pressure_bar) AS min_air_pressure 
FROM Machine_Downtime;

SELECT MAX(Air_System_Pressure_bar) AS max_air_pressure 
FROM Machine_Downtime;

SELECT STDDEV(Air_System_Pressure_bar) AS stddev_air_pressure 
FROM Machine_Downtime;

SELECT 
    MAX(Air_System_Pressure_bar) - MIN(Air_System_Pressure_bar) AS pressure_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Air_System_Pressure_bar) AS Air_System_Pressure_variance_pop, 
    VAR_SAMP(Air_System_Pressure_bar) AS Air_System_Pressure_variance_samp
FROM Machine_Downtime;

SELECT 
    VAR_POP(Coolant_Pressure_bar) AS Coolant_Pressure_variance_pop, 
    VAR_SAMP(Coolant_Pressure_bar) AS Coolant_Pressure_variance_samp
FROM Machine_Downtime;


/* Coolant Temperature Analysis */

SELECT AVG(Coolant_Temperature) AS avg_coolant_temp 
FROM Machine_Downtime;

SELECT MIN(Coolant_Temperature) AS min_coolant_temp 
FROM Machine_Downtime;

SELECT MAX(Coolant_Temperature) AS max_coolant_temp 
FROM Machine_Downtime;

SELECT STDDEV(Coolant_Temperature) AS stddev_coolant_temp 
FROM Machine_Downtime;

SELECT 
    MAX(Coolant_Temperature) - MIN(Coolant_Temperature) AS temperature_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Coolant_Temperature) AS Coolant_Temperature_variance_pop, 
    VAR_SAMP(Coolant_Temperature) AS Coolant_Temperature_variance_samp
FROM Machine_Downtime;



/* Hydraulic Oil Temperature Analysis */

SELECT AVG(Hydraulic_Oil_Temperature) AS avg_hydraulic_oil_temp 
FROM Machine_Downtime;

SELECT MIN(Hydraulic_Oil_Temperature) AS min_hydraulic_oil_temp 
FROM Machine_Downtime;

SELECT MAX(Hydraulic_Oil_Temperature) AS max_hydraulic_oil_temp 
FROM Machine_Downtime;

SELECT STDDEV(Hydraulic_Oil_Temperature) AS stddev_hydraulic_oil_temp 
FROM Machine_Downtime;

SELECT 
    MAX(Hydraulic_Oil_Temperature) - MIN(Hydraulic_Oil_Temperature) AS temperature_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Hydraulic_Oil_Temperature) AS Hydraulic_Oil_Temperature_variance_pop, 
    VAR_SAMP(Hydraulic_Oil_Temperature) AS Hydraulic_Oil_Temperature_variance_samp
FROM Machine_Downtime;



/* Spindle Bearing Temperature Analysis */

SELECT AVG(Spindle_Bearing_Temperature) AS avg_spindle_bearing_temp 
FROM Machine_Downtime;

SELECT MIN(Spindle_Bearing_Temperature) AS min_spindle_bearing_temp 
FROM Machine_Downtime;


SELECT MAX(Spindle_Bearing_Temperature) AS max_spindle_bearing_temp 
FROM Machine_Downtime;

SELECT STDDEV(Spindle_Bearing_Temperature) AS stddev_spindle_bearing_temp 
FROM Machine_Downtime;

SELECT 
    MAX(Spindle_Bearing_Temperature) - MIN(Spindle_Bearing_Temperature) AS temperature_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Spindle_Bearing_Temperature) AS Spindle_Bearing_Temperature_variance_pop, 
    VAR_SAMP(Spindle_Bearing_Temperature) AS Spindle_Bearing_Temperature_variance_samp
FROM Machine_Downtime;



/* Spindle_Vibration Analysis */

SELECT AVG(Spindle_Vibration) AS avg_spindle_vibration 
FROM Machine_Downtime;

SELECT MIN(Spindle_Vibration) AS min_spindle_vibration 
FROM Machine_Downtime;

SELECT MAX(Spindle_Vibration) AS max_spindle_vibration 
FROM Machine_Downtime;

SELECT STDDEV(Spindle_Vibration) AS stddev_spindle_vibration 
FROM Machine_Downtime;

SELECT 
    MAX(Spindle_Vibration) - MIN(Spindle_Vibration) AS vibration_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Spindle_Vibration) AS Spindle_Vibration_variance_pop, 
    VAR_SAMP(Spindle_Vibration) AS Spindle_Vibration_variance_samp
FROM Machine_Downtime;


/* Tool_Vibration Analysis */

SELECT AVG(Tool_Vibration) AS avg_tool_vibration 
FROM Machine_Downtime;

SELECT MIN(Tool_Vibration) AS min_tool_vibration 
FROM Machine_Downtime;

SELECT MAX(Tool_Vibration) AS max_tool_vibration 
FROM Machine_Downtime;

SELECT STDDEV(Tool_Vibration) AS stddev_tool_vibration 
FROM Machine_Downtime;

SELECT 
    MAX(Tool_Vibration) - MIN(Tool_Vibration) AS vibration_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Tool_Vibration) AS Tool_Vibration_variance_pop, 
    VAR_SAMP(Tool_Vibration) AS Tool_Vibration_variance_samp
FROM Machine_Downtime;


/* Spindle_Speed_RPM Analysis */

SELECT AVG(Spindle_Speed_RPM) AS avg_spindle_speed 
FROM Machine_Downtime;


SELECT MIN(Spindle_Speed_RPM) AS min_spindle_speed 
FROM Machine_Downtime;


SELECT MAX(Spindle_Speed_RPM) AS max_spindle_speed 
FROM Machine_Downtime;


SELECT STDDEV(Spindle_Speed_RPM) AS stddev_spindle_speed 
FROM Machine_Downtime;

SELECT 
    MAX(Spindle_Speed_RPM) - MIN(Spindle_Speed_RPM) AS speed_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Spindle_Speed_RPM) AS Spindle_Speed_variance_pop, 
    VAR_SAMP(Spindle_Speed_RPM) AS Spindle_Speed_variance_samp
FROM Machine_Downtime;



/* Voltage_volts Analysis */

SELECT AVG(Voltage_volts) AS avg_voltage 
FROM Machine_Downtime;

SELECT MIN(Voltage_volts) AS min_voltage 
FROM Machine_Downtime;

SELECT MAX(Voltage_volts) AS max_voltage 
FROM Machine_Downtime;

SELECT STDDEV(Voltage_volts) AS stddev_voltage 
FROM Machine_Downtime;

SELECT 
    MAX(Voltage_volts) - MIN(Voltage_volts) AS voltage_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Voltage_volts) AS Voltage_variance_pop, 
    VAR_SAMP(Voltage_volts) AS Voltage_variance_samp
FROM Machine_Downtime;


/* Torque_Nm Analysis */

SELECT AVG(Torque_Nm) AS avg_torque 
FROM Machine_Downtime;

SELECT MIN(Torque_Nm) AS min_torque 
FROM Machine_Downtime;

SELECT MAX(Torque_Nm) AS max_torque 
FROM Machine_Downtime;

SELECT STDDEV(Torque_Nm) AS stddev_torque 
FROM Machine_Downtime;

SELECT 
    MAX(Torque_Nm) - MIN(Torque_Nm) AS torque_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Torque_Nm) AS Torque_variance_pop, 
    VAR_SAMP(Torque_Nm) AS Torque_variance_samp
FROM Machine_Downtime;




/* Cutting_kN Analysis */

SELECT AVG(Cutting_kN) AS avg_cutting_force 
FROM Machine_Downtime;

SELECT MIN(Cutting_kN) AS min_cutting_force 
FROM Machine_Downtime;

SELECT MAX(Cutting_kN) AS max_cutting_force 
FROM Machine_Downtime;

SELECT STDDEV(Cutting_kN) AS stddev_cutting_force 
FROM Machine_Downtime;

SELECT 
    MAX(Cutting_kN) - MIN(Cutting_kN) AS cutting_force_range 
FROM Machine_Downtime;

SELECT 
    VAR_POP(Cutting_kN) AS Cutting_kN_variance_pop, 
    VAR_SAMP(Cutting_kN) AS Cutting_kN_variance_samp
FROM Machine_Downtime;

/*Measure Of Central Tendency*/

/* SQL Query for Median Calculation (Hydraulic_Pressure_bar)*/

WITH sorted_data AS (
    SELECT 
        Hydraulic_Pressure_bar,
        ROW_NUMBER() OVER (ORDER BY Hydraulic_Pressure_bar) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM Machine_Downtime
)
SELECT AVG(Hydraulic_Pressure_bar) AS median_Hydraulic_Pressure
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Coolant_Pressure_bar) */
WITH sorted_data AS (
    SELECT 
        Coolant_Pressure_bar,
        ROW_NUMBER() OVER (ORDER BY Coolant_Pressure_bar) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Coolant_Pressure_bar) AS median_Coolant_Pressure_bar
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Air_System_Pressure_bar)*/
WITH sorted_data AS (
    SELECT 
        Air_System_Pressure_bar,
        ROW_NUMBER() OVER (ORDER BY Air_System_Pressure_bar) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Air_System_Pressure_bar) AS median_Air_System_Pressure_bar
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Coolant_Temperature) */

WITH sorted_data AS (
    SELECT 
        Coolant_Temperature,
        ROW_NUMBER() OVER (ORDER BY Coolant_Temperature) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Coolant_Temperature) AS median_Coolant_Temperature
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Hydraulic_Oil_Temperature) */

WITH sorted_data AS (
    SELECT 
        Hydraulic_Oil_Temperature,
        ROW_NUMBER() OVER (ORDER BY Hydraulic_Oil_Temperature) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Hydraulic_Oil_Temperature) AS median_Hydraulic_Oil_Temperature
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Spindle_Bearing_Temperature) */

WITH sorted_data AS (
    SELECT 
        Spindle_Bearing_Temperature,
        ROW_NUMBER() OVER (ORDER BY Spindle_Bearing_Temperature) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Spindle_Bearing_Temperature) AS median_Spindle_Bearing_Temperature
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Spindle_Vibration) */

WITH sorted_data AS (
    SELECT 
        Spindle_Vibration,
        ROW_NUMBER() OVER (ORDER BY Spindle_Vibration) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Spindle_Vibration) AS median_Spindle_Vibration
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Tool_Vibration) */

WITH sorted_data AS (
    SELECT 
        Tool_Vibration,
        ROW_NUMBER() OVER (ORDER BY Tool_Vibration) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Tool_Vibration) AS median_Tool_Vibration
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Spindle_Speed_RPM) */

WITH sorted_data AS (
    SELECT 
        Spindle_Speed_RPM,
        ROW_NUMBER() OVER (ORDER BY Spindle_Speed_RPM) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Spindle_Speed_RPM) AS median_Spindle_Speed_RPM
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Voltage_volts) */

WITH sorted_data AS (
    SELECT 
        Voltage_volts,
        ROW_NUMBER() OVER (ORDER BY Voltage_volts) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Voltage_volts) AS median_Voltage_volts
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Torque_Nm) */

WITH sorted_data AS (
    SELECT 
        Torque_Nm,
        ROW_NUMBER() OVER (ORDER BY Torque_Nm) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Torque_Nm) AS median_Torque_Nm
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));

/* SQL Query for Median Calculation (Cutting_kN) */

WITH sorted_data AS (
    SELECT 
        Cutting_kN,
        ROW_NUMBER() OVER (ORDER BY Cutting_kN) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM machine_downtime
)
SELECT AVG(Cutting_kN) AS median_Cutting_kN
FROM sorted_data
WHERE row_num IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2));


/* Business Decision */
/* SQL Query for Skewness & Kurtosis of Hydraulic_Pressure_bar */
SELECT 
    (SUM(POWER(Hydraulic_Pressure_bar - avg_hp, 3)) / COUNT(*) ) / POWER(stddev_hp, 3) AS skewness,
    ((SUM(POWER(Hydraulic_Pressure_bar - avg_hp, 4)) / COUNT(*) ) / POWER(stddev_hp, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Hydraulic_Pressure_bar, 
        (SELECT AVG(Hydraulic_Pressure_bar) FROM machine_downtime) AS avg_hp,
        (SELECT STDDEV(Hydraulic_Pressure_bar) FROM machine_downtime) AS stddev_hp
    FROM machine_downtime
) AS subquery;

/* SQL Query for Skewness & Kurtosis of Coolant_Pressure_bar */

SELECT 
    (SUM(POWER(Coolant_Pressure_bar - avg_cp, 3)) / COUNT(*)) / POWER(stddev_cp, 3) AS skewness,
    ((SUM(POWER(Coolant_Pressure_bar - avg_cp, 4)) / COUNT(*)) / POWER(stddev_cp, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Coolant_Pressure_bar, 
        (SELECT AVG(Coolant_Pressure_bar) FROM machine_downtime) AS avg_cp,
        (SELECT STDDEV(Coolant_Pressure_bar) FROM machine_downtime) AS stddev_cp
    FROM machine_downtime
) AS subquery;


/* SQL Query for Skewness & Kurtosis of Air_System_Pressure_bar */

SELECT 
    (SUM(POWER(Air_System_Pressure_bar - avg_asp, 3)) / COUNT(*)) / POWER(stddev_asp, 3) AS skewness,
    ((SUM(POWER(Air_System_Pressure_bar - avg_asp, 4)) / COUNT(*)) / POWER(stddev_asp, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Air_System_Pressure_bar, 
        (SELECT AVG(Air_System_Pressure_bar) FROM machine_downtime) AS avg_asp,
        (SELECT STDDEV(Air_System_Pressure_bar) FROM machine_downtime) AS stddev_asp
    FROM machine_downtime
) AS subquery;

/* SQL Query for Skewness & Kurtosis of Coolant_Temperature */

SELECT 
    (SUM(POWER(Coolant_Temperature - avg_ct, 3)) / COUNT(*)) / POWER(stddev_ct, 3) AS skewness,
    ((SUM(POWER(Coolant_Temperature - avg_ct, 4)) / COUNT(*)) / POWER(stddev_ct, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Coolant_Temperature, 
        (SELECT AVG(Coolant_Temperature) FROM machine_downtime) AS avg_ct,
        (SELECT STDDEV(Coolant_Temperature) FROM machine_downtime) AS stddev_ct
    FROM machine_downtime
) AS subquery;

/* SQL Query for Skewness & Kurtosis of Hydraulic_Oil_Temperature */

SELECT 
    (SUM(POWER(Hydraulic_Oil_Temperature - avg_hot, 3)) / COUNT(*)) / POWER(stddev_hot, 3) AS skewness,
    ((SUM(POWER(Hydraulic_Oil_Temperature - avg_hot, 4)) / COUNT(*)) / POWER(stddev_hot, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Hydraulic_Oil_Temperature, 
        (SELECT AVG(Hydraulic_Oil_Temperature) FROM machine_downtime) AS avg_hot,
        (SELECT STDDEV(Hydraulic_Oil_Temperature) FROM machine_downtime) AS stddev_hot
    FROM machine_downtime
) AS subquery;

/* SQL Query for Skewness & Kurtosis of Spindle_Bearing_Temperature */

SELECT 
    (SUM(POWER(Spindle_Bearing_Temperature - avg_sbt, 3)) / COUNT(*)) / POWER(stddev_sbt, 3) AS skewness,
    ((SUM(POWER(Spindle_Bearing_Temperature - avg_sbt, 4)) / COUNT(*)) / POWER(stddev_sbt, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Spindle_Bearing_Temperature, 
        (SELECT AVG(Spindle_Bearing_Temperature) FROM machine_downtime) AS avg_sbt,
        (SELECT STDDEV(Spindle_Bearing_Temperature) FROM machine_downtime) AS stddev_sbt
    FROM machine_downtime
) AS subquery;

/* SQL Query for Skewness & Kurtosis of Spindle_Vibration */

SELECT 
    (SUM(POWER(Spindle_Vibration - avg_sv, 3)) / COUNT(*)) / POWER(stddev_sv, 3) AS skewness,
    ((SUM(POWER(Spindle_Vibration - avg_sv, 4)) / COUNT(*)) / POWER(stddev_sv, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Spindle_Vibration, 
        (SELECT AVG(Spindle_Vibration) FROM machine_downtime) AS avg_sv,
        (SELECT STDDEV(Spindle_Vibration) FROM machine_downtime) AS stddev_sv
    FROM machine_downtime
) AS subquery;

/* SQL Query for Skewness & Kurtosis of Tool_Vibration */

SELECT 
    (SUM(POWER(Tool_Vibration - avg_tv, 3)) / COUNT(*)) / POWER(stddev_tv, 3) AS skewness,
    ((SUM(POWER(Tool_Vibration - avg_tv, 4)) / COUNT(*)) / POWER(stddev_tv, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Tool_Vibration, 
        (SELECT AVG(Tool_Vibration) FROM machine_downtime) AS avg_tv,
        (SELECT STDDEV(Tool_Vibration) FROM machine_downtime) AS stddev_tv
    FROM machine_downtime
) AS subquery;
/* SQL Query for Skewness & Kurtosis of Spindle_Speed_RPM */

SELECT 
    (SUM(POWER(Spindle_Speed_RPM - avg_ss, 3)) / COUNT(*)) / POWER(stddev_ss, 3) AS skewness,
    ((SUM(POWER(Spindle_Speed_RPM - avg_ss, 4)) / COUNT(*)) / POWER(stddev_ss, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Spindle_Speed_RPM, 
        (SELECT AVG(Spindle_Speed_RPM) FROM machine_downtime) AS avg_ss,
        (SELECT STDDEV(Spindle_Speed_RPM) FROM machine_downtime) AS stddev_ss
    FROM machine_downtime
) AS subquery;


/* SQL Query for Skewness & Kurtosis of Voltage_volts */

SELECT 
    (SUM(POWER(Voltage_volts - avg_voltage, 3)) / COUNT(*)) / POWER(stddev_voltage, 3) AS skewness,
    ((SUM(POWER(Voltage_volts - avg_voltage, 4)) / COUNT(*)) / POWER(stddev_voltage, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Voltage_volts, 
        (SELECT AVG(Voltage_volts) FROM machine_downtime) AS avg_voltage,
        (SELECT STDDEV(Voltage_volts) FROM machine_downtime) AS stddev_voltage
    FROM machine_downtime
) AS subquery;

/*  SQL Query for Skewness & Kurtosis of Torque_Nm */

SELECT 
    (SUM(POWER(Torque_Nm - avg_torque, 3)) / COUNT(*)) / POWER(stddev_torque, 3) AS skewness,
    ((SUM(POWER(Torque_Nm - avg_torque, 4)) / COUNT(*)) / POWER(stddev_torque, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Torque_Nm, 
        (SELECT AVG(Torque_Nm) FROM machine_downtime) AS avg_torque,
        (SELECT STDDEV(Torque_Nm) FROM machine_downtime) AS stddev_torque
    FROM machine_downtime
) AS subquery;

/*  SQL Query for Skewness & Kurtosis of Cutting_kN */

SELECT 
    (SUM(POWER(Cutting_kN - avg_cutting, 3)) / COUNT(*)) / POWER(stddev_cutting, 3) AS skewness,
    ((SUM(POWER(Cutting_kN - avg_cutting, 4)) / COUNT(*)) / POWER(stddev_cutting, 4)) - 3 AS kurtosis
FROM (
    SELECT 
        Cutting_kN, 
        (SELECT AVG(Cutting_kN) FROM machine_downtime) AS avg_cutting,
        (SELECT STDDEV(Cutting_kN) FROM machine_downtime) AS stddev_cutting
    FROM machine_downtime
) AS subquery;


/*  Total Machin_Failure and No_Machin_Failure */

SELECT 
    Downtime,
    COUNT(*) AS total_count
FROM machine_downtime
WHERE Downtime IN ('Machine_Failure', 'No_Machine_Failure')
GROUP BY Downtime;

SELECT 
    Machine_ID,
    Assembly_Line_No,
    SUM(CASE WHEN Downtime = 'Machine_Failure' THEN 1 ELSE 0 END) AS Total_Machine_Failure,
    SUM(CASE WHEN Downtime = 'No_Machine_Failure' THEN 1 ELSE 0 END) AS Total_No_Machine_Failure
FROM machine_downtime
GROUP BY Machine_ID, Assembly_Line_No;

/* Machine_ID and Assembly_Line_No with the maximum number of machine failures */

SELECT Machine_ID, Assembly_Line_No, 
       COUNT(*) AS Total_Machine_Failure
FROM machine_downtime
WHERE Downtime = 'Machine_Failure'
GROUP BY Machine_ID, Assembly_Line_No
ORDER BY Total_Machine_Failure DESC
LIMIT 1;

/* the average number of machine failures per machine and assembly line */

SELECT 
    Machine_ID, 
    Assembly_Line_No, 
    AVG(CASE WHEN Downtime = 'Machine_Failure' THEN 1 ELSE 0 END) AS Avg_Machine_Failure
FROM machine_downtime
GROUP BY Machine_ID, Assembly_Line_No;

/* Machine_Failure every option is AVR */

SELECT 
    Machine_ID, 
    Assembly_Line_No, 
    AVG(Air_System_Pressure_bar) AS Avg_Air_System_Pressure,
    AVG(Coolant_Pressure_bar) AS Avg_Coolant_Pressure,
    AVG(Hydraulic_Pressure_bar) AS Avg_Hydraulic_Pressure,
    AVG(Coolant_Temperature) AS Avg_Coolant_Temperature,
    AVG(Hydraulic_Oil_Temperature) AS Avg_Hydraulic_Oil_Temperature,
    AVG(Spindle_Bearing_Temperature) AS Avg_Spindle_Bearing_Temperature,
    AVG(Spindle_Vibration) AS Avg_Spindle_Vibration,
    AVG(Tool_Vibration) AS Avg_Tool_Vibration,
    AVG(Spindle_Speed_RPM) AS Avg_Spindle_Speed,
    AVG(Voltage_volts) AS Avg_Voltage,
    AVG(Torque_Nm) AS Avg_Torque,
    AVG(Cutting_kN) AS Avg_Cutting_Force,
    SUM(CASE WHEN Downtime = 'Machine_Failure' THEN 1 ELSE 0 END) AS Total_Machine_Failures
FROM machine_downtime
GROUP BY Machine_ID, Assembly_Line_No;

/* Machine_Failure  where every option is max */

SELECT 
    Machine_ID, 
    Assembly_Line_No, 
    MAX(Air_System_Pressure_bar) AS Max_Air_System_Pressure,
    MAX(Coolant_Pressure_bar) AS Max_Coolant_Pressure,
    MAX(Hydraulic_Pressure_bar) AS Max_Hydraulic_Pressure,
    MAX(Coolant_Temperature) AS Max_Coolant_Temperature,
    MAX(Hydraulic_Oil_Temperature) AS Max_Hydraulic_Oil_Temperature,
    MAX(Spindle_Bearing_Temperature) AS Max_Spindle_Bearing_Temperature,
    MAX(Spindle_Vibration) AS Max_Spindle_Vibration,
    MAX(Tool_Vibration) AS Max_Tool_Vibration,
    MAX(Spindle_Speed_RPM) AS Max_Spindle_Speed,
    MAX(Voltage_volts) AS Max_Voltage,
    MAX(Torque_Nm) AS Max_Torque,
    MAX(Cutting_kN) AS Max_Cutting_Force,
    SUM(CASE WHEN Downtime = 'Machine_Failure' THEN 1 ELSE 0 END) AS Total_Machine_Failures
FROM machine_downtime
GROUP BY Machine_ID, Assembly_Line_No;


/* Machine_Failure  where every option is min */

SELECT 
    Machine_ID, 
    Assembly_Line_No, 
    MIN(Air_System_Pressure_bar) AS Min_Air_System_Pressure,
    MIN(Coolant_Pressure_bar) AS Min_Coolant_Pressure,
    MIN(Hydraulic_Pressure_bar) AS Min_Hydraulic_Pressure,
    MIN(Coolant_Temperature) AS Min_Coolant_Temperature,
    MIN(Hydraulic_Oil_Temperature) AS Min_Hydraulic_Oil_Temperature,
    MIN(Spindle_Bearing_Temperature) AS Min_Spindle_Bearing_Temperature,
    MIN(Spindle_Vibration) AS Min_Spindle_Vibration,
    MIN(Tool_Vibration) AS Min_Tool_Vibration,
    MIN(Spindle_Speed_RPM) AS Min_Spindle_Speed,
    MIN(Voltage_volts) AS Min_Voltage,
    MIN(Torque_Nm) AS Min_Torque,
    MIN(Cutting_kN) AS Min_Cutting_Force,
    SUM(CASE WHEN Downtime = 'Machine_Failure' THEN 1 ELSE 0 END) AS Total_Machine_Failures
FROM machine_downtime
GROUP BY Machine_ID, Assembly_Line_No;
