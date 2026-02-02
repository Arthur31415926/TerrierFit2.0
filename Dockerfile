FROM docker.io/wger/server:latest

# 用你的代码覆盖官方镜像里的源码目录
COPY . /home/wger/src
WORKDIR /home/wger/src

# 重新收集静态文件（不想被旧静态文件影响）
RUN python manage.py collectstatic --noinput || true
