library(ggplot2)
dados <- read.csv("E:/Documentos/Documentos/MetodologiaCientifica-AlgoritmosR-main//dados.csv")

frequencias <-table(dados$Você.acredita.que.os.impactos.das.Inteligências.Artificiais.Generativas.nos.meios.virtuais.configura.se..em.sua.maioria..como)
porcentagens <- (frequencias/sum(frequencias)) * 100

DadosQ1 <- data.frame( Categorias = c("Negativo","Neutro","Positivo"),Porcentagem = as.numeric(porcentagens))
grafico <- ggplot(DadosQ1, aes(x = reorder(Categorias,Porcentagem), y = Porcentagem)) + 
  geom_bar(stat = "identity", fill = "pink")+ 
  geom_text(aes(label = paste0(round(Porcentagem, 1), "%")), vjust = -0.5) +
  labs(x = "Categorias", y = "Valores") + 
  ggtitle("") + 
  theme_minimal()+
  theme(axis.text.x = element_text(size = 13))

print(grafico) 



categorias_desejadas <- c(0,1,2,3)
dados$Quanto.você.tinha.de.conhecimento.sobre.a.Ciência.da.Computação.antes.de.escolher.entrar.no.curso. <- factor(dados$Quanto.você.tinha.de.conhecimento.sobre.a.Ciência.da.Computação.antes.de.escolher.entrar.no.curso., levels = categorias_desejadas)

frequencias2 <-table(dados$Quanto.você.tinha.de.conhecimento.sobre.a.Ciência.da.Computação.antes.de.escolher.entrar.no.curso.)
porcentagens2 <- (frequencias2/sum(frequencias2)) * 100

DadosQ2 <- data.frame( Categorias = c("Nenhum","Pouco","Razoável","Muito"),Porcentagem = as.numeric(porcentagens2), Ordem = c(1,2,3,4))
grafico <- ggplot(DadosQ2, aes(x = reorder (Categorias, Ordem), y = Porcentagem)) + 
  geom_bar(stat = "identity", fill = "pink")+ 
  geom_text(aes(label = paste0(round(Porcentagem, 1), "%")), vjust = -0.5) +
  labs(x = "Categorias", y = "Valores") + 
  ggtitle("") + 
  theme_minimal()+
  theme(axis.text.x = element_text(size = 13))

print(grafico) 
