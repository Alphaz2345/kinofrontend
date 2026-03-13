FROM eclipse-temurin:25-jdk

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

EXPOSE 8081

CMD ["java", "-jar", "target/Kinofrontenddd-0.0.1-SNAPSHOT.jar", "--server.port=8081"]