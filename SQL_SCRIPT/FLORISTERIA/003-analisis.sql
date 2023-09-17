
-- Ventas por sucursales y productos
select sucursal
     , sum(rosas)            as rosas
     , sum(claveles)         as claveles
     , sum(macetas)          as macetas
     , sum(tierra)           as tierra
     , sum(girasoles)        as girasoles
     , sum(hortensia)        as hortensia
     , sum(globos)           as globos
     , sum(tarjetas)         as tarjetas
     , sum(flores_orquidias) as flores_orquidias
     , sum(carmesi)          as carmesi
     , sum(lirios)           as lirios
     , sum(aurora)           as aurora
     , sum(tulipanes)        as tulipanes
     , sum(liston)           as liston
from dbo.Ventas
group by sucursal;




-- Se analisan los 10 productos mas vendidos en la sucursal de San Miguel
WITH VentasUnpivoted AS (
    SELECT
        Productos,
        Cantidad
    FROM dbo.Ventas
    UNPIVOT (
        Cantidad FOR Productos IN (
            rosas, claveles, macetas, tierra, girasoles,
            hortensia, globos, tarjetas, flores_orquidias,
            carmesi, lirios, aurora, tulipanes, liston
        )
    ) AS Unpivoted
    WHERE Sucursal = 'SanMiguel'
)

SELECT TOP 10
    Productos,
    SUM(Cantidad) AS TotalVentas
FROM VentasUnpivoted
GROUP BY Productos
ORDER BY TotalVentas DESC;


-- Se analisan los 10 productos mas vendidos en la sucursal de San Salvador
WITH VentasUnpivoted AS (
    SELECT
        Productos,
        Cantidad
    FROM dbo.Ventas
    UNPIVOT (
        Cantidad FOR Productos IN (
            rosas, claveles, macetas, tierra, girasoles,
            hortensia, globos, tarjetas, flores_orquidias,
            carmesi, lirios, aurora, tulipanes, liston
        )
    ) AS Unpivoted
    WHERE Sucursal = 'SanSalvador'
)

SELECT TOP 10
    Productos,
    SUM(Cantidad) AS TotalVentas
FROM VentasUnpivoted
GROUP BY Productos
ORDER BY TotalVentas DESC;



-- Se analisan los 10 productos mas vendidos en la sucursal de Santa Ana
WITH VentasUnpivoted AS (
    SELECT
        Productos,
        Cantidad
    FROM dbo.Ventas
    UNPIVOT (
        Cantidad FOR Productos IN (
            rosas, claveles, macetas, tierra, girasoles,
            hortensia, globos, tarjetas, flores_orquidias,
            carmesi, lirios, aurora, tulipanes, liston
        )
    ) AS Unpivoted
    WHERE Sucursal = 'SantaAna'
)

SELECT TOP 10
    Productos,
    SUM(Cantidad) AS TotalVentas
FROM VentasUnpivoted
GROUP BY Productos
ORDER BY TotalVentas DESC;


-- Se analiza a nivel nacional

WITH VentasUnpivoted AS (
    SELECT
        Productos,
        Cantidad
    FROM dbo.Ventas
    UNPIVOT (
        Cantidad FOR Productos IN (
            rosas, claveles, macetas, tierra, girasoles,
            hortensia, globos, tarjetas, flores_orquidias,
            carmesi, lirios, aurora, tulipanes, liston
        )
    ) AS Unpivoted
    WHERE Sucursal in ('SanMiguel', 'SanSalvador', 'SantaAna')
)

SELECT TOP 10
    Productos,
    SUM(Cantidad) AS TotalVentas
FROM VentasUnpivoted
GROUP BY Productos
ORDER BY TotalVentas DESC;


-- Ventas solo de las flores


WITH VentasUnpivoted AS (
    SELECT
        Productos,
        Cantidad
    FROM dbo.Ventas
    UNPIVOT (
        Cantidad FOR Productos IN (
            rosas, claveles, macetas, tierra, girasoles,
            hortensia, globos, tarjetas, flores_orquidias,
            carmesi, lirios, aurora, tulipanes, liston
        )
    ) AS Unpivoted
    WHERE Sucursal in ('SanMiguel', 'SanSalvador', 'SantaAna')
)

SELECT TOP 10
    Productos,
    SUM(Cantidad) AS TotalVentas
FROM VentasUnpivoted
where Productos in ('rosas', 'claveles', 'girasoles', 'hortensia', 'flores_orquidias', 'carmesi', 'lirios', 'aurora', 'tulipanes')
GROUP BY Productos
ORDER BY TotalVentas DESC;


-- Ventas solo de los accesorios

WITH VentasUnpivoted AS (
    SELECT
        Productos,
        Cantidad
    FROM dbo.Ventas
    UNPIVOT (
        Cantidad FOR Productos IN (
            rosas, claveles, macetas, tierra, girasoles,
            hortensia, globos, tarjetas, flores_orquidias,
            carmesi, lirios, aurora, tulipanes, liston
        )
    ) AS Unpivoted
    WHERE Sucursal in ('SanMiguel', 'SanSalvador', 'SantaAna')
)

SELECT TOP 10
    Productos,
    SUM(Cantidad) AS TotalVentas
FROM VentasUnpivoted
where Productos in ('globos', 'tarjetas', 'liston')
GROUP BY Productos
ORDER BY TotalVentas DESC;

-- Ventas solo Artículos para Jardín

WITH VentasUnpivoted AS (
    SELECT
        Productos,
        Cantidad
    FROM dbo.Ventas
    UNPIVOT (
        Cantidad FOR Productos IN (
            rosas, claveles, macetas, tierra, girasoles,
            hortensia, globos, tarjetas, flores_orquidias,
            carmesi, lirios, aurora, tulipanes, liston
        )
    ) AS Unpivoted
    WHERE Sucursal in ('SanMiguel', 'SanSalvador', 'SantaAna')
)

SELECT TOP 10
    Productos,
    SUM(Cantidad) AS TotalVentas
FROM VentasUnpivoted
where Productos in ('macetas', 'tierra')
GROUP BY Productos
ORDER BY TotalVentas DESC;



