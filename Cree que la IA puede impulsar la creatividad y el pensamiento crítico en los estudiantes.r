# Instala el paquete ggplot2 si no lo tienes instalado
# install.packages("ggplot2")

# Carga el paquete ggplot2
library(ggplot2)

# Crea un data frame con los datos de la encuesta
datos <- data.frame(
  respuesta = c("Sí", "No"),
  cantidad = c(15, 10)
)

# Calcula el porcentaje de cada categoría
datos$porcentaje <- datos$cantidad / sum(datos$cantidad) * 100

# Crea el gráfico de torta con los valores etiquetados como porcentajes
grafico <- ggplot(datos, aes(x = "", y = porcentaje, fill = respuesta)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  labs(fill = "Respuesta", x = NULL, y = NULL, title = "¿Cree que la IA puede impulsar la creatividad y el pensamiento crítico en los estudiantes?") +
  geom_text(aes(label = paste0(porcentaje, "%")), position = position_stack(vjust = 0.5))

# Muestra el gráfico
print(grafico)
