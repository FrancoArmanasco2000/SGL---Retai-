INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('PUERTO','08:00','16:00','true'); 
INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('CENTRAL','08:00','16:00','true');
INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('BUENOS AIRES','08:00','16:00','true');
INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('SANTA FE','08:30','13:30','true');
INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('CORDOBA','10:00','15:00','true');
INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('ENTRE RIOS','09:00','13:00','true');
INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('ROSARIO','11:15','18:30','true');
INSERT INTO sucursal (nombre,hapertura,hcierre,estado) VALUES('MENDOZA','14:00','20:00','true');

INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(1,3,'03:30',3000,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(1,4,'05:00',2500,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(1,5,'05:30',2600,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(1,6,'02:30',1300,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(3,2,'01:30',1900,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(4,7,'02:15',2300,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(7,2,'02:00',2000,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(5,8,'02:45',1600,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(8,2,'03:30',1700,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(6,2,'01:30',1100,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(7,5,'02:30',1500,'true');
INSERT INTO camino(sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima,estado) VALUES(7,6,'01:25',1085,'true');

INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Televisor LED', '55", MARCA: "LG"', 500000.00, 18.5);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Heladera', '350L, MARCA: "Midea"', 800000.00, 75.2);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Microondas', '1200W, MARCA: "BGH"', 72350.00, 13.4);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Licuadora', '230V, MARCA: "Electrolux"', 21499.00, 4.5);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Lampara', '200V, MARCA: "Ferrolux"', 7499.99, 3.5);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Aspiradora', '2000W, MARCA: "Samsung"', 62499.99, 4.8);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Sofá', '2 plazas, MARCA: "Tioso"', 128061.00, 80.0);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Mesa', 'Madera maciza, MARCA: "Nordico"', 33590.50, 10.6);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Lavavajillas', '220V, MARCA: "Whirlpool"', 697299.00, 68.3);
INSERT INTO producto (nombre, descripcion, precio_unitario, peso_kg) VALUES ('Cafetera', '235V, MARCA: "Philips"', 479999.99, 7.1);

INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(1,3,25);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(2,3,10);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(3,3,15);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(4,3,30);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(5,3,55);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(6,3,90);

INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(1,4,10);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(2,4,20);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(3,4,50);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(6,4,5);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(7,4,15);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(8,4,30);

INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(1,5,12);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(3,5,24);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(5,5,48);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(7,5,64);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(9,5,128);

INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(2,6,3);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(4,6,5);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(6,6,7);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(8,6,9);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(10,6,11);

INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(1,7,10);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(2,7,12);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(3,7,14);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(4,7,16);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(5,7,18);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(6,7,20);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(7,7,22);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(8,7,24);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(9,7,26);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(10,7,28);

INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(4,8,15);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(2,8,52);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(8,8,41);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(5,8,93);
INSERT INTO stock_producto_sucursal(id_producto,id_sucursal,cantidad_stock) VALUES(9,8,45);


INSERT INTO orden_provision(fecha_orden,id_sucursal_destino,tiempo_maximo_horas,estado) VALUES('2023-08-05 00:00:00',8,12,'PENDIENTE');
INSERT INTO detalle_orden_provision(id_orden_provision,id_producto,cantidad_requerida) VALUES(1,3,5);
INSERT INTO detalle_orden_provision(id_orden_provision,id_producto,cantidad_requerida) VALUES(1,7,5);



















