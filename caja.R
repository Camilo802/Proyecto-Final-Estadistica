# Datos
tiempo_de_uso <- c(3, 3, 4, 2, 2, 2, 1, 2, 2, 6, 7, 6, 1, 1, 5, 4, 2, 14, 1, 2, 3, 14, 2, 11, 2)

# Cálculo de medidas estadísticas
media <- mean(tiempo_de_uso)
mediana <- median(tiempo_de_uso)

moda <- names(table(tiempo_de_uso))[table(tiempo_de_uso) == max(table(tiempo_de_uso))]

desviacion_estandar <- sd(tiempo_de_uso)

rango <- max(tiempo_de_uso) - min(tiempo_de_uso)


# Imprimir medidas estadísticas
cat("Media:", media, "\n")
cat("Mediana:", mediana, "\n")
cat("Moda:", moda, "\n")
cat("Desviación estándar:", desviacion_estandar, "\n")
cat("Rango:", rango, "\n")

media
mediana
moda
desviacion_estandar
rango

# Gráfico de histograma
hist(tiempo_de_uso, main = "Histograma de Tiempo de Uso", xlab = "Tiempo de Uso", ylab = "Frecuencia", col = "lightblue")

# Gráfico de boxplot
boxplot(tiempo_de_uso, main = "Boxplot de Tiempo de Uso", ylab = "Tiempo de Uso (meses)", col = "lightblue")