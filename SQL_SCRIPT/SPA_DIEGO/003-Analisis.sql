select *
from dbo.DatosClientes;

-- Analisis por edades
-- 21 - 65 años
select min(edad), max(edad)
from dbo.DatosClientes;

/*
    21 - 30
    31 - 40
    41 - 50
    51 - 60
    61 - 65
*/

select case
           when edad between 21 and 30 then '21 - 30'
           when edad between 31 and 40 then '31 - 40'
           when edad between 41 and 50 then '41 - 50'
           when edad between 51 and 60 then '51 - 60'
           when edad between 61 and 65 then '61 - 65'
           end                  as RangoEdad,
       count(*)                 as Cantidad,
       sum(ingresos) / count(*) as TotalIngresos
from dbo.DatosClientes
group by case
             when edad between 21 and 30 then '21 - 30'
             when edad between 31 and 40 then '31 - 40'
             when edad between 41 and 50 then '41 - 50'
             when edad between 51 and 60 then '51 - 60'
             when edad between 61 and 65 then '61 - 65'
             end
order by case
             when edad between 21 and 30 then '21 - 30'
             when edad between 31 and 40 then '31 - 40'
             when edad between 41 and 50 then '41 - 50'
             when edad between 51 and 60 then '51 - 60'
             when edad between 61 and 65 then '61 - 65'
             end;

-- Analisis de los ingresos
select min(ingresos), max(ingresos)
from dbo.DatosClientes;

SELECT CASE
           WHEN edad BETWEEN 21 AND 30 THEN '21 - 30'
           WHEN edad BETWEEN 31 AND 40 THEN '31 - 40'
           WHEN edad BETWEEN 41 AND 50 THEN '41 - 50'
           WHEN edad BETWEEN 51 AND 60 THEN '51 - 60'
           WHEN edad BETWEEN 61 AND 65 THEN '61 - 65'
           END  AS RangoEdad,
       CASE
           WHEN Ingresos BETWEEN 251.84 AND 999.99 THEN 'Bajos'
           WHEN Ingresos BETWEEN 1000.00 AND 1999.99 THEN 'Moderados'
           WHEN Ingresos >= 2000.00 THEN 'Altos'
           END  AS RangoIngresos,
       CASE
           WHEN (Yoga + Hidro + Masaje + Sauna) = 0 THEN '0'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 1 THEN '1'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 2 THEN '2'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 3 THEN '3'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 4 THEN '4'
           END  AS Consumo,
       COUNT(*) AS Cantidad
FROM dbo.DatosClientes
GROUP BY CASE
             WHEN edad BETWEEN 21 AND 30 THEN '21 - 30'
             WHEN edad BETWEEN 31 AND 40 THEN '31 - 40'
             WHEN edad BETWEEN 41 AND 50 THEN '41 - 50'
             WHEN edad BETWEEN 51 AND 60 THEN '51 - 60'
             WHEN edad BETWEEN 61 AND 65 THEN '61 - 65'
             END,
         CASE
             WHEN Ingresos BETWEEN 251.84 AND 999.99 THEN 'Bajos'
             WHEN Ingresos BETWEEN 1000.00 AND 1999.99 THEN 'Moderados'
             WHEN Ingresos >= 2000.00 THEN 'Altos'
             END,
         CASE
             WHEN (Yoga + Hidro + Masaje + Sauna) = 0 THEN '0'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 1 THEN '1'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 2 THEN '2'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 3 THEN '3'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 4 THEN '4'
             END
ORDER BY RangoEdad;



SELECT CASE
           WHEN edad BETWEEN 21 AND 30 THEN '21 - 30'
           WHEN edad BETWEEN 31 AND 40 THEN '31 - 40'
           WHEN edad BETWEEN 41 AND 50 THEN '41 - 50'
           WHEN edad BETWEEN 51 AND 60 THEN '51 - 60'
           WHEN edad BETWEEN 61 AND 65 THEN '61 - 65'
           END  AS RangoEdad,
       CASE
           WHEN Ingresos BETWEEN 251.84 AND 999.99 THEN 'Bajos'
           WHEN Ingresos BETWEEN 1000.00 AND 1999.99 THEN 'Moderados'
           WHEN Ingresos >= 2000.00 THEN 'Altos'
           END  AS RangoIngresos,
       CASE
           WHEN Sexo = 'F' THEN 'Femenino'
           WHEN Sexo = 'M' THEN 'Masculino'
           END AS Sexo,
       CASE
           WHEN (Yoga + Hidro + Masaje + Sauna) = 0 THEN '0'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 1 THEN '1'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 2 THEN '2'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 3 THEN '3'
           WHEN (Yoga + Hidro + Masaje + Sauna) = 4 THEN '4'
           END  AS Consumo,
       COUNT(*) AS Cantidad
FROM dbo.DatosClientes
GROUP BY CASE
             WHEN edad BETWEEN 21 AND 30 THEN '21 - 30'
             WHEN edad BETWEEN 31 AND 40 THEN '31 - 40'
             WHEN edad BETWEEN 41 AND 50 THEN '41 - 50'
             WHEN edad BETWEEN 51 AND 60 THEN '51 - 60'
             WHEN edad BETWEEN 61 AND 65 THEN '61 - 65'
             END,
         CASE
             WHEN Ingresos BETWEEN 251.84 AND 999.99 THEN 'Bajos'
             WHEN Ingresos BETWEEN 1000.00 AND 1999.99 THEN 'Moderados'
             WHEN Ingresos >= 2000.00 THEN 'Altos'
             END,
         CASE
           WHEN Sexo = 'F' THEN 'Femenino'
           WHEN Sexo = 'M' THEN 'Masculino'
           END,
         CASE
             WHEN (Yoga + Hidro + Masaje + Sauna) = 0 THEN '0'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 1 THEN '1'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 2 THEN '2'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 3 THEN '3'
             WHEN (Yoga + Hidro + Masaje + Sauna) = 4 THEN '4'
             END
ORDER BY RangoEdad;


SELECT CASE
           WHEN edad BETWEEN 21 AND 30 THEN '21 - 30'
           WHEN edad BETWEEN 31 AND 40 THEN '31 - 40'
           WHEN edad BETWEEN 41 AND 50 THEN '41 - 50'
           WHEN edad BETWEEN 51 AND 60 THEN '51 - 60'
           WHEN edad BETWEEN 61 AND 65 THEN '61 - 65'
           END AS                         RangoEdad,
       CASE
           WHEN Sexo = 'F' THEN 'Femenino'
           WHEN Sexo = 'M' THEN 'Masculino'
           END AS                         Sexo,
       sum(Yoga + Hidro + Masaje + Sauna) Consumo
FROM dbo.DatosClientes
GROUP BY CASE
             WHEN edad BETWEEN 21 AND 30 THEN '21 - 30'
             WHEN edad BETWEEN 31 AND 40 THEN '31 - 40'
             WHEN edad BETWEEN 41 AND 50 THEN '41 - 50'
             WHEN edad BETWEEN 51 AND 60 THEN '51 - 60'
             WHEN edad BETWEEN 61 AND 65 THEN '61 - 65'
             END,
         CASE
             WHEN Sexo = 'F' THEN 'Femenino'
             WHEN Sexo = 'M' THEN 'Masculino'
             END
ORDER BY RangoEdad;


