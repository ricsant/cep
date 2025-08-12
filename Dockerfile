# Usa uma imagem base com Java 17
FROM openjdk:21-jdk

# Copiando da raiz do projeto para a raiz do docker
COPY . .

# Rodar o maven para gerar imagem
RUN ./mvnw clean install

# Define o ponto de entrada
ENTRYPOINT ["java", "-jar", "target/cep-0.0.1-SNAPSHOT.jar"]