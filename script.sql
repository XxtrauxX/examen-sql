use pizzaFiesta;




create table cliente(
	id_cliente int primary key,
	nombre varchar(100) not null,
	numero_contacto int not null,
	direccion varchar(100) not null);
	

create table cliente_pago(
		id_cliente_pago int primary key,
		id_cliente int not null,
		id_pago int not null,
		foreign key(id_cliente) references cliente(id_cliente),
		foreign key(id_pago) references pago(id_pago));
		
	
	create table pago(
			id_pago int primary key,
			numero_tarjeta int not null,
			confirmacion_pago varchar(20) check(confirmacion_pago IN('confirmada')));
		
		
		
		
	 show tables;
		
		
		
	


			
			
			
			
	
	     create table pedido(
					id_pedido int primary key,
					historial_pedidos varchar(500) not null,
					hora_recogida_pedido varchar(50) not null,
					añadir_producto varchar(100) not null);
				
				
		
	
			
create table producto(
			id_producto int primary key,
			pizzas_disponibles varchar(500) not null,
			bebidas_disponibles varchar(100) not null,
			añadir_ingrediente_pizza varchar(100) not null,
			combos_disponibles varchar(100) not null);
		
		
		
alter table producto 
add precio int not null;
		
		
		
describe producto;

		
		
create table pedido_pago(
		id_pedido_pago int primary key,
		id_pago int not null,
		id_pedido int not null,
		foreign key(id_pago) references pago(id_pago),
		foreign key(id_pedido) references pedido(id_pedido)
		);
	
	
	
	
create table pedido_pago(
		id_pedido_pago int primary key,
		id_pago int not null,
		id_pedido int not null,
		foreign key(id_pago) references pago(id_pago),
		foreign key(id_pedido) references pedido(id_pedido)
		)
		
		
		
		
		
create table cliente_producto(
		id_cliente_producto int primary key,
		id_cliente int not null,
		id_producto int not null,
		foreign key(id_cliente) references cliente(id_cliente),
		foreign key(id_producto) references producto(id_producto)
		);


	
	
	
create table cliente_pedido(
		id_cliente_pedido int primary key,
		id_cliente int not null,
		id_pedido int not null,
		foreign key(id_cliente) references cliente(id_cliente),
		foreign key(id_pedido) references pedido(id_pedido));
	
	
	
	
	
	
	
	
	-- consultas
	
	
	-- . **Crear un pedido para un cliente:**
	
	
  INSERT INTO pedido(id_pedido,historial_pedidos,hora_recogida_pedido,añadir_producto) values (1,"no registra","9","no");
  INSERT INTO pedido(id_pedido,historial_pedidos,hora_recogida_pedido,añadir_producto) values (2,"pizza y pepsi","10","no");
 INSERT INTO pedido(id_pedido,historial_pedidos,hora_recogida_pedido,añadir_producto) values (3,"pizza y papas","11","no");
   INSERT INTO cliente_pedido(id_cliente_pedido,id_cliente,id_pedido) values (1,1,1);
   INSERT INTO cliente_pedido(id_cliente_pedido,id_cliente,id_pedido) values (2,1,2);
  
  
  
  -- QUEDÓ ENLAZADA LA INFORMACION PARA CONSULTA CON JOIN
	
	
	-- #1 1. **Registrar un nuevo cliente:**
	
	
	INSERT INTO cliente(id_cliente,nombre,numero_contacto,direccion) values (1,"oscar",30182927,"conjunto paraguitas");

-- con INSERT INTO se registra un nuevo cliente

	
	
--  **Actualizar la dirección de un cliente:**



-- 15. **Listar todos los ingredientes disponibles para personalizar una pizza:**


INSERT INTO producto(id_producto,pizzas_disponibles,bebidas_disponibles,añadir_ingrediente_pizza,combos_disponibles) values (1,"pizza peperoni","pepsi","pepinillos","papas con pizza",300);
INSERT INTO producto(id_producto,pizzas_disponibles,bebidas_disponibles,añadir_ingrediente_pizza,combos_disponibles) values (2,"pizza italiana","jugo natural","extra queso","pizza, bebida y papas",200);
INSERT INTO producto(id_producto,pizzas_disponibles,bebidas_disponibles,añadir_ingrediente_pizza,combos_disponibles) values (3,"pizza hawaina","cocacola","pimentones y aji","pizza, bebida y papas con queso",100);


select p.añadir_ingrediente_pizza as ingrediente_para_perzonalizar
FROM producto p;

-- para readme 

--  **Consultar todos los pedidos de un cliente:**

Select * from cliente_pedido;



-- 19. **Listar todos los combos de pizzas con bebidas disponibles en el menú:**

SELECT combos_disponibles
FROM producto;





-- 10. **Actualizar la dirección de un cliente:**


select * from cliente;

INSERT INTO pedido(id_pedido,historial_pedido,hora_recogida_pedido,añadir_producto)  VALUES (1,"Pizza italiana","9:30pm","");


-- 3. **Registrar una bebida en el menú:**

select * from producto;
