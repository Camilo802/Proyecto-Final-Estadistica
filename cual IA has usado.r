library(ggplot2)

# Crear los datos
ia <- c("ChatGPT", "Bing", "Bard", "Stable Diffusion", "Midjourney", "Dall-e", "PyTorch", "TensorFlow", "chatpdf", "perplexity ai", "alexa", "Poe")
estudiantes <- c(24, 3, 2, 1, 1, 2, 1, 2, 2, 3, 1, 1)
datos <- data.frame(IA = ia, Estudiantes = estudiantes)

# Crear el gráfico de barras
ggplot(datos, aes(x = IA, y = Estudiantes, label = Estudiantes)) +
  geom_bar(stat = "identity", fill = "blue") +
  geom_text(vjust = -0.5) +
  xlab("IA utilizada") +
  ylab("Cantidad de estudiantes") +
  ggtitle("Cantidad de estudiantes por IA utilizada") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
