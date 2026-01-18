# Java 17 environment
FROM eclipse-temurin:17-jdk

# Working directory
WORKDIR /app

# Project ke saare files copy karo
COPY . .

# mvnw ko executable banao
RUN chmod +x mvnw

# Project build karo
RUN ./mvnw clean package -DskipTests

# Port expose
EXPOSE 8080

# Spring Boot app run karo
CMD ["java", "-jar", "target/*.jar"]
