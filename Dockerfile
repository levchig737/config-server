# официальный образ OpenJDK
FROM openjdk:17-jdk-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем весь проект (включая JAR файл после сборки)
COPY target/*.jar app.jar

# Указываем точку входа для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]
