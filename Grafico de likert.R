dados <- read.csv("E:/Documentos/Documentos/R - Gorvernança da Internet//dados.csv")
colnames(dados)[5:10] <- c("Você acredita que as Inteligências Artificiais Generativas funcionam efetivamente? Por exemplo, você recebe conteúdos relacionados as suas pretensões ao realizar um pedido a uma  Inteligência Artificial Generativa. ",
                          "Você acredita que as Inteligências Artificiais Generativas operam de acordo com uma regulamentação legal? Por exemplo, os dados coletados, durante o uso das Inteligências Artificiais Generativas, não ferem o seu direito a privacidade.", 
                          "Você acredita que as Inteligências Artificiais Generativas têm o potencial de criar desafios adicionais para a detecção e a prevenção de crimes cibernéticos? Por exemplo, não é mais possível distinguir completamente imagens geradas por Inteligências Artificiais Generativas de imagens reais. ",
                          "Você ouve falar frequentemente de crimes cibernéticos facilitados pelo uso de Inteligências Artificiais Generativas? Por exemplo, a falsificação de imagens ou geração de conteúdo malicioso utilizando  Inteligências Artificiais Generativas.",
                          "Você acredita que o aumento do uso de  Inteligências Artificiais Generativas está relacionado a um aumento nos crimes cibernéticos? Por exemplo, os índices de fraudes aumentaram devido em conjunto com as Inteligências Artificiais Generativas.",
                          "Você vê algum benefício potencial no uso de  Inteligências Artificiais Generativas para combater crimes cibernéticos? Por exemplo, como a automação de processos de resposta a incidentes."
)

dados[8]

questoes <- data.frame(
  Q8 <- dados$`Você vê algum benefício potencial no uso de  Inteligências Artificiais Generativas para combater crimes cibernéticos? Por exemplo, como a automação de processos de resposta a incidentes.`)
library(likert)
likert_q1 <- likert(questoes, nlevels = 5)
colnames(likert_q1$results)[2:6] <- c("Discordo Totalmente", "Discordo Parcialmente", "Neutra", "Concordo Parcialmente", "Concordo Totalmente")
colnames(likert_q1$items)[1:1] <-c("Você vê algum benefício potencial no uso de  Inteligências Artificiais Generativas para combater crimes cibernéticos? Por exemplo, como a automação de processos de resposta a incidentes."                                   
) 
likert_q1$results$Item[1:1] <- c("Você vê algum benefício potencial no uso de  Inteligências Artificiais Generativas para combater crimes cibernéticos? Por exemplo, como a automação de processos de resposta a incidentes."
)

graficoLikert <-likert.bar.plot(likert_q1,plot.percents=F,legend = "Legenda", low.color = "pink", text.size=4) + ggtitle("") + labs( x = "Questões", y = "Porcentagem") + theme_minimal() + theme(legend.position = "bottom") +
  theme(axis.text.x = element_text(size = 13))
print(graficoLikert)

