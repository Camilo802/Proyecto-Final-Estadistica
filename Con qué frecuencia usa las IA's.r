library(ggplot2)

# Crear los datos
frecuencia <- c(1, 2, 3, 4, 5)
valores <- c(3, 5, 7, 5, 5)
datos <- data.frame(Frecuencia = frecuencia, Valores = valores)

# Calcular el porcentaje
porcentaje <- (valores / sum(valores)) * 100

# Crear el gráfico de barras con porcentajes
ggplot(datos, aes(x = Frecuencia, y = Valores)) +
  geom_bar(stat = "identity", fill = "blue") +
  geom_text(aes(label = paste0(Valores, " (", round(porcentaje, 1), "%)")), vjust = -0.5) +
  xlab("Frecuencia") +
  ylab("Cantidad de veces de uso de IA") +
  ggtitle("Uso de IA con frecuencia y porcentaje") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
