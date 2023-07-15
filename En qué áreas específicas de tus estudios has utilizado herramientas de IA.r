library(ggplot2)

# Crear los datos
areas <- c("Programación", "Lectura", "Matemáticas")
valores <- c(16, 3, 6)
datos <- data.frame(Areas = areas, Valores = valores)

# Crear el gráfico de barras
ggplot(datos, aes(x = Areas, y = Valores, label = Valores)) +
  geom_bar(stat = "identity", fill = "blue") +
  geom_text(vjust = -0.5) +
  xlab("Áreas de estudio") +
  ylab("Cantidad de uso de herramientas de IA") +
  ggtitle("Uso de herramientas de IA en áreas de estudio") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
