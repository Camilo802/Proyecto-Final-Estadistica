# Instalar y cargar la librería "ggplot2" si no está instalada+
library(ggplot2)
library(moments)

frecuencia_uso <- c(4, 2, 3, 2, 1, 2, 1, 3, 2, 5, 4, 5, 5, 2, 3, 3, 3, 4, 1, 3, 4, 5, 3, 5, 4)
media <- mean(frecuencia_uso)
media
desv_est <- sd(frecuencia_uso)
desv_est
curtosis_val <- kurtosis(frecuencia_uso)
curtosis_val
sesgo_val <- skewness(frecuencia_uso)
sesgo_val

densidad_normal <- function(x) dnorm(x, mean = media, sd = desv_est)
hist(frecuencia_uso, freq = FALSE, main = "Histograma y densidad normal ajustada")
curve(densidad_normal, add = TRUE, col = "red", lwd = 2)

text(x = max(frecuencia_uso) - 0.8, y = max(density(frecuencia_uso)$y), 
     paste0("Curtosis: ", round(curtosis_val, 2)), col = "blue")
text(x = max(frecuencia_uso) - 0.8, y = max(density(frecuencia_uso)$y) - 0.1, 
     paste0("Sesgo: ", round(sesgo_val, 2)), col = "blue")