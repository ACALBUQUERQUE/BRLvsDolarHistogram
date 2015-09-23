# Libs
library(reshape2)
library(Quandl)
library(ggplot2)
valor_real <- Quandl("BCB/10813", trim_start="1994-09-22") #Fonte:Banco Central do Brasil

# Grafico Real x Dolar
qplot(Date, Value, data = valor_real, geom = "histogram", ylab = "# Valor USD", xlab = "# Ano", color = Value, stat = "identity", main = "R$ x US$ por Ano") + scale_colour_gradient(limits=c(0, 4), low="green", high="red") + scale_x_date(breaks = date_breaks("2 years"),labels = date_format("%Y"))