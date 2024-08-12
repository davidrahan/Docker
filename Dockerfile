# Use the official OpenJDK image to build the application
FROM openjdk:17-jdk-slim AS build

# Set the working directory
WORKDIR /app

# Copy the Java source file into the container
COPY HelloDocker.java /app/HelloDocker.java

# Compile the Java program
RUN javac HelloDocker.java

# Use a smaller base image to run the compiled application
FROM openjdk:17-jre-slim

# Set the working directory
WORKDIR /app

# Copy the compiled Java class file from the build stage
COPY --from=build /app/HelloDocker.class /app/HelloDocker.class

# Command to run the Java application
CMD ["java", "HelloDocker"]
