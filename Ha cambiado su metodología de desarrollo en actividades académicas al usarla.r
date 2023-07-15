install.packages("ggplot2")
library(ggplot2)

# Crea un data frame con los datos de la encuesta
datos <- data.frame(
  respuesta = c("Sí", "No"),
  cantidad = c(18, 7)
)

# Calcula el porcentaje de cada categoría
datos$porcentaje <- datos$cantidad / sum(datos$cantidad) * 100

# Crea el gráfico de torta con los valores etiquetados como porcentajes
grafico <- ggplot(datos, aes(x = "", y = porcentaje, fill = respuesta)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  labs(fill = "Respuesta", x = NULL, y = NULL, title = "¿Ha cambiado su metodología de desarrollo en actividades académicas al usarla?") +
  geom_text(aes(label = paste0(porcentaje, "%")), position = position_stack(vjust = 0.5))

# Muestra el gráfico
print(grafico)
