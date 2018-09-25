setwd("D:/Clase_de_R_8")
library(foreign)
vehiculos <-read.spss(file="vehiculos.sav", to.data.frame=TRUE)
fix(vehiculos)

attach(vehiculos)
# An�lisis univariado
summary(vehiculos)
# Correlaci�n, prueba de independencia y diagrama de dispersi�n
cor.test(cons120, ccl, alternative = "two.sided", method = "pearson")
plot(ccl, cons120, col="blue4", main="Diagrama de dispersi�n", pch= 19)
# Formulaci�n modelo. Y=consumo medio, X=cilindrada
# Prueba de normalidad en la variable dependiente
shapiro.test(cons120)

# De la prueba de normalidad se tiene que


# Ajuste del modelo
regresion<-lm(cons120 ~ ccl)
summary(regresion) # Muestra resultados
confint(regresion, level= 0.95) # Intervalos de confianza
aov(regresion)# ANOVA
## Otras opciones del an�lisis
regre2 <-lm(cons120 ~ ccl -1) # Omite el intercepto
summary(regre2)$coefficients

newmethod <- c(64.5, 66.0, 63.9, 65.1, 64.0); newmethod # mg/100 ml
standarmethod <- c(66.2, 65.8, 66.3, 65.6); standarmethod # mg/100 ml
# method <- data.frame(newmethod, standarmethod, stringsAsFactors = TRUE)
mean_new <- mean(newmethod)
mean_standar <- mean(standarmethod)
difference <- mean_new - mean_standar