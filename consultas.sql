SELECT c.codigo_cliente, c.nombre, c.apellido, c.cedula, COUNT(c.codigo_cliente) as numero_alquiler FROM rentacar.cliente as c
RIGHT JOIN rentacar.reservacion as r ON c.codigo_cliente = r.codigo_cliente
GROUP BY c.codigo_cliente;

SELECT v.codigo_vehiculo, v.marca, v.modelo, v.placa, COUNT(v.codigo_vehiculo) as numero_alquiler FROM rentacar.vehiculo as v
RIGHT JOIN rentacar.reservacion as r ON v.codigo_vehiculo = r.codigo_vehiculo
GROUP BY v.codigo_vehiculo;

SELECT v.codigo_vehiculo, v.marca, v.modelo, v.placa, COUNT(v.codigo_vehiculo) as numero_mantenimiento FROM rentacar.vehiculo as v
RIGHT JOIN rentacar.ficha_mantenimiento as fm ON v.codigo_vehiculo = fm.codigo_vehiculo
GROUP BY v.codigo_vehiculo;

SELECT v.color, MAX(v.costo_diario) as costo_diario FROM rentacar.vehiculo AS v
GROUP BY v.color, v.costo_diario
ORDER BY v.costo_diario DESC;

SELECT v.codigo_vehiculo, v.marca, v.modelo, v.placa, SUM(v.costo_diario) as costo_diario FROM rentacar.vehiculo as v
RIGHT JOIN rentacar.reservacion as r ON v.codigo_vehiculo = r.codigo_vehiculo
GROUP BY v.codigo_vehiculo;