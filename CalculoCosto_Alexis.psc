Algoritmo CalculoCosto_Alexis
	Definir productos, destino Como cadena
	Definir producto, cantidad, pesokg, costofijo, valorkg Como Entero
	Definir precio, descuento, iva, precio_iva, preciodescuentocant, descuentocant, preciototal Como Real
	
	iva<-1.12
	costofijo<-10
	valorkg<-2
	pesokg<-0
	
	//Arreglo 3 productos
	dimension productos[3]
	productos[1]<- "Zapato deportivo"
	productos[2]<- "Zapato trekking"
	productos[3]<- "Zapato formal"
	
	//Bucle repetir hasta seleccionar opcion 1 a 3
	Repetir

	Escribir "Seleccione un producto: "
	para i <- 1 Con Paso 1 hasta 3 Hacer
		Escribir i, ": ",productos[i] 
	FinPara
		
	Leer producto
	
	//Condición SI anidado
	Si producto = 1 Entonces
		Escribir "El producto seleccionado es, " productos[1]
	SiNo
		Si producto = 2 Entonces
			Escribir "El producto seleccionado es, " productos[2]
		SiNo
			Si producto = 3 Entonces
				Escribir "El producto seleccionado es, " productos[3]
			SiNo	
				Escribir "Producto no existe"
	Fin Si
		Fin Si
			Fin Si
			
	Hasta Que producto<=3
		
	Escribir "Ingrese precio: "
	Leer precio
	Escribir "Ingrese cantidad: "
	Leer cantidad
			
	//Descuento cupón 10% de descuento
	Escribir "Seleccione cupón de descuento, opción: "
	Escribir "1. 10% descuento"
	Escribir "2. No tengo"
	leer descuento
	
	//Aplica cupón y IVA 12% del precio con descuento
	Segun (descuento) Hacer
		1:
			Escribir "Cupón ingresado"
			descuento<-precio*0.10
			precio_iva<-(precio-descuento)*iva
		2:
			Escribir "No tiene cupón"
			descuento<-precio-precio
			precio_iva<-precio*iva
			
		De Otro Modo:
			Escribir "Opción ingresada no existe"
			descuento<-precio-precio
			precio_iva<-precio*iva
	Fin Segun
	
	//Aplicar descuento por cantidad 
	Si cantidad>1 Entonces
		descuentocant<-precio_iva*0.05
		preciodescuentocant<-precio_iva*0.95
		Escribir "Ingrese destino: "
		Leer destino
		Escribir "Ingrese peso en Kilos: "
		leer pesokg
		preciototal<-(preciodescuentocant*cantidad)+(pesokg*valorkg)+costofijo
		Escribir "Precio descuento cantidad: ", preciodescuentocant
	SiNo
		Escribir "Ingrese destino: "
		Leer destino
		Escribir "Ingrese peso en Kilos: "
		leer pesokg
		preciototal<-(precio_iva*cantidad)+(pesokg*valorkg)+costofijo
	Fin Si
	
	Escribir "Cupón descuento: ", descuento
	Escribir "Precio unidad con IVA: ", precio_iva
	Escribir "Descuento por cantidad: ", descuentocant
	Escribir "Costo envio: ", (pesokg*valorkg+costofijo)
	Escribir "----------------------------------------"
	Escribir "Precio TOTAL es: ", preciototal
	Escribir "----------------------------------------"
	Escribir "Gracias por su compra" 
	
FinAlgoritmo