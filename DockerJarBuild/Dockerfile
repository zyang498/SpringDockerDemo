# syntax=docker/dockerfile:1

# From后面的是docker build用到的基础镜像，Docker镜像可以从其他镜像继承。
FROM eclipse-temurin:17-jdk-jammy

# 复制本地编译好的jar包到Docker镜像中
COPY SpringDockerDemo-0.0.1-SNAPSHOT.jar app.jar

# 初始化运行Docker镜像时执行的命令，ENTRYPOINT和CMD的区别详见官方文档
ENTRYPOINT ["java", "-jar", "./app.jar"]