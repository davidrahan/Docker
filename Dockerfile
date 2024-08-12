# Use the official OpenJDK image to build the application
FROM openjdk:17-jdk-slim AS build

# Set the working directory
WORKDIR /app

# Copy the Java source file into the container
COPY new1.java.java /app/new1.java

# Compile the Java program
RUN javac new1.java

# Command to run the Java application
CMD ["java", "new1"]
