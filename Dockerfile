# 使用官方的 Node.js 运行时作为父镜像
FROM node:18

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 并安装依赖
COPY package*.json ./

RUN npm install

# 复制项目源代码
COPY . .

# 暴露应用运行的端口
EXPOSE 3000

# 定义启动应用的命令
CMD ["npm", "start"]
