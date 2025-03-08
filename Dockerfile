# Use an official OpenJDK runtime as a parent image
#FROM eclipse-temurin:17-jdk AS build

# Set the working directory (Project folder inside container)
#WORKDIR /demo

# Copy Maven wrapper and pom.xml
#COPY mvnw pom.xml ./
#COPY .mvn .mvn

# Grant execute permission to Maven wrapper
##RUN chmod +x mvnw

# Copy the whole project source code
#COPY src src

# Build the application
#RUN ./mvnw clean package -DskipTests

# Use a minimal JRE image for running the application
#FROM eclipse-temurin:17-jre

# Set the working directory inside the container
#WORKDIR /demo

# Corrected: Copy JAR from the correct build path
#COPY --from=build /demo/target/*.jar demo.jar

# Expose the application port
#EXPOSE 8080

# Command to run the application
#CMD ["java", "-jar", "demo.jar"]
