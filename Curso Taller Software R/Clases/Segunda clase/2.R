setwd("F:\Clase_de_R_2")
# En STATA si hacemos un tabla de frecuencias
# STATA guarda en una variable
# En R se guarda en memoria los vectores, matrices.
# R al finalizar la sesi�n pregunta por guardar el �rea de trabajo.
# Caracterca observable de un objeto de estudio.
# Poblaci�n, UNidad de analisis, definiciond evaraibles(cualitativas, cuantitativas)
#base de datos, o matriz de datos
# Identificar el tipo de an�liss
# Editarlo e interpretarlo
# Hay que hacer un dise�o. (Personas, animales)
# qu� an�lisis estad�stico voy a hacer
# TEner en cuenta la metodolog�a Hernandez Sampieri M�todos de investigaci�n
# Sus valores representan categor�as, escalas de medida. qu� es
# a los decimales les pone doble precisi�n
# NA se conocen como "missing"
x <- NA
# Asignar NA a la variable x
y <- c(x,3,5,x)
# asignamos al vector y dos NA y dos n�meros
mean(y)
# calcula la media teniendo en cuenta los NA's.
y[3]
# calcula la media SIN tener en cuenta los NA's.
# NaN: no es un n�mero
# is.na(x)
# is.nan(x)
# Son funciones de comprobaci�n
sqrt(-17)
# Produce un "Warning message" avisando que es Na.
sqrt(-17+0i) # Es otro n�mero complejo.
x <- 5/0; x
# Asignamos a x un valor infinito

exp(-x)
exp(x)-exp(x)

# Los objetos se dividen en at�micos y recursivos
str(x)
str(y)
# Las matrices tienen dimensi�n.
# Factores se usa en pruebas de hip�tesis y los modelos, es una variable cualitativa

# En una matriz de datos: Columnas las variables, las filas son los datos.
# Yo represento los valores u observaciones.
# c() se llama la funci�n de contatenaci�n
# uno de los elementos de los vectores es la funci�n concatenaci�n
y <- seq(-3,3,0.5)
genero <- c("Mujer", "Hombre"); genero
labs <- paste(c("X","Y"),1:10,sep=""); labs
# Esto es �til cuando se hace gr�ficos.

# sample significa una muestra
x <- c(1:10); x
sample(x,3)
sample(x)
# Paso 1: Generamos el vector. Paso 2: Mostramos la muestra.

# Permutaciones de los elementos de x
y <- sample(5:15,5)
y
# Paso 1 y 2 en uno solo

municipio <- c("Say�n", "Paramonga", "Santa Eulalia", "Canta", "Chilca", "Chur�n")
provincia <- factor(municipio); provincia # Variable cualitativa
# Los niveles indican cualitativo

matrix(1:10, ncol=5, nrow=2)
matriz <- matrix(c(1,2,3,4,5,6,7,8,9),3,3); matriz # matriz es el nombre de la matrix
# La matriz anterior se llen� por columnas.
milista = list(nombre='Pepe', no.hijos=3, edades.hijos=c(4,7,9))
# va a repetir el nombre y el numero de hijos
milista$nombre; milista[[1]]
# is.recursive para ver el tipo de objeto




ejemplolista<-list(nombre="Pedro",casado=T,
esposa="Mar�a",no.hijos=3,edad.hijos=c(4,7,9))
ejemplolista
ejemplolista[5]
is.vector(ejemplolista[5]);is.list(ejemplolista[5])
ejemplolista[[5]]
is.vector(ejemplolista[[5]]);is.list(ejemplolista[[5]])
ejemplolista[[5]][2]
ejemplolista[[5]] # Aqu� me quede
ejemplolista$casado
ejemplolista$nombre
is.recursive(ejemplolista)
is.atomic(ejemplolista)#vemoseltipodeobjeto
listamasgrande<-c(ejemplolista,list(edad=40))

# La primera es nominal. Definici�n operacional: tiempo es continuo.
# Tenemos dos discretas y dos continuas.
# De intervalo o de raz�n es el tipo de medida
# base de datos es inform�tica, matriz de datos es an�lisis estad�stico. Hay casos en el que se usa el 2do.

datasimp <- data.frame(anyos=c(1.3,0.4,1.1,2.3,3.1,1.3),
tipo=c(2,3,3,1,3,1), edad=c(22,21,34,42,17,43),
sexo=c("H","M","H","H","M","H")); datasimp
# sexo ser�a un factor.

# factor es cualitataiva y me indica los niveles y se tiene las etiquetas
# los numeros secuenciales no forma parte del data frame, se recomienda usar un codigo de identifacion
# numerico y caracter es el tipo de dato. antes vimos las definciones operacionales de los datos. esos numeros representan codigos

# detach lo regresa a lista
# las variables en R son vectores

attach(datasimp); anyos
detach(datasimp); anyos
datos.hombre.filtrados <- datasimp[datasimp$sexo=='H'] # Es otro vector
mas.peq <- subset(datasimp,anyos<1,select=c(edad,sexo))


###################################################################################################################################
x <- c(1,3); mode(x); length(x)
# c() significa concatenaci�n

x <- 3; x
3 -> z; z

x1 <- c(1,3)
assign("x", c(1,3))
a = c(1:10); a
# En algunos contextos = equivale a <-, pero se prefiere usar <-

x1 <- logical(4); x1 # Si no hay dato se considera 0, y 0 es FALSE.
x2 <- numeric(4); x2; x3 <- complex(4); x3; x4 <- character(4); x4 # Inicializa, para luego ser completado o asginado.

# == igualdad
# != distinto

x <- c(T,T,F,F); x
y <- c(T,F,T,F); y
x & y # produce TRUE FALSE FALSE FALSE
x|y # produce TRUE TRUE TRUE FALSE
xor(x,y) # produce FALSE TRUE TRUE FALSE
any(x) #produce

v2 <- c(1:5); v; typeof(v); class(v)
v <- c(1,2,3,4,5); v; typeof(v); class(v)
v <- c(FALSE, TRUE, FALSE)
as.numeric(v) # Estamos forzando
# as.() # Es un m�todo.
as.logical(v)
as.character(v)

v <- c("a", "b", "c") # Introduzco un vector de caracteres
as.numeric(v) # Fuerzo a que sea num�rico
# comprobaci�n con is y coerci�n con as
library()
# lista tiene diferentes tipos de archivos
#statatransform o windedt
# de stata lo llevamos a spss
# con el nombre de abes se guardar en R
# header T, las variables est�n en la primera fila
x <- scan()
# 1: 1 5 8 3
# 5: [Intro]
# lo tamamos como inicializamos
# en algunos casos no funciona
# save es un caso particular sve.unage
# importar es datos en datos <- read.spss

# cambia read.table por read.spss en leer un txt y leer un .sav
#spss son bases de datos y son grandes, en spss tiene usas variables definidas
# to.data.frame = TRUE, indicar que es una base de datos


# Ejercicio 2 y 3 lo hacemos nosotros en la pr�ctica
# En Windows se debe usar / (slash) y no \ (backslash).

library(foreign)# Cargamos el paquete
iris<-read.spss(file="iris.sav",to.data.frame=TRUE)
str(iris) # Hace un listado de casos, no conviene hacerlo. Hay que trabajar con variable como hemos visto en SPSS.
# averiguar el comando adecuado para leer iris
# ODBC es para un servidor
# se puede con SQL
# en esa hoja de excel solo debe haber esa tabla, csv es un paquete ascii
# si alguien encuentr auna manera mejor avisar
# en hoja de calculo no aparece etiqueta
# toda muestra tiene un documento metodologico, cuestionario, diccionario de datos, si hay variables calculadas, ficha tecnica, dise�o muestral, dise�os investigados
# si tengo datos, debo tener mi m�todo metodologico. censal ENAG
# tesis ENDES, comparable con otros pa�ses
# ficha t�cnica
# en la primera linea del ASCII est�n las variables header = TRUE

datos1 = read.table(file="quinua.csv", header=TRUE, sep=","); datos1
fix(datos1)
datos1
# en quinua.csv cambiar datos.txt
datos3 = read.table(file.choose())
# nos indica el bienestar de la poblaci�n de Per�
# variable que indica el bienestar de la poblaci�n: ingresos (se subestiman), consumo, l�nea de pobreza y generamos la pobreza
multietapico, seleccion por  conglomerado, dise�o muestral.
# enaho genera tablas interrelacionadas que refleja el resumen es la sumaria, se puede descargar de la p�gina web y la tenemos en spss
en la sumaria la unidad de analisis es el hogar, no hay cuestionario sino variables calculadas en la sumaria.

# rcommander es un paquete de r
# todo lo que rcmdr lo marcamos
vasquep@pucp.pe