library(ggplot2)

# Crear los datos
meses <- c(1, 2, 3, 4, 5, 6, 7, 11, 14)
valores <- c(4, 9, 3, 2, 1, 2, 1, 1, 2)
datos <- data.frame(Meses = meses, Valores = valores)

# Calcular el porcentaje
porcentaje <- (valores / sum(valores)) * 100

# Crear el gráfico de barras con porcentajes
ggplot(datos, aes(x = Meses, y = Valores)) +
  geom_bar(stat = "identity", fill = "blue") +
  geom_text(aes(label = paste0(Valores, " (", round(porcentaje, 1), "%)")), vjust = -0.5) +
  xlab("Meses") +
  ylab("Cantidad de meses de uso de IA") +
  ggtitle("Uso de IA en meses con porcentaje") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
