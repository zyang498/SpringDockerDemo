# syntax=docker/dockerfile:1

# From后面的是docker build用到的基础镜像，Docker镜像可以从其他镜像继承。
FROM eclipse-temurin:17-jdk-jammy

# 设置Docker镜像的工作路径(working directory)
WORKDIR /app

# 复制必要的编译依赖到Docker镜像，在Maven项目中为Maven Wrapper和pom.xml
# Maven Wrapper从字面意思上理解指的是Maven包装纸，是一种自动安装Maven的脚本
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
# 在Docker镜像中安装pom.xml依赖
RUN ./mvnw dependency:resolve

# 将本地源码复制到Docker镜像
COPY src ./src

# 初始化运行Docker镜像时执行的命令
CMD ["./mvnw", "spring-boot:run"]