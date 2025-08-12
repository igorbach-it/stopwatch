FROM nginx:1.27-alpine

# Заменяем дефолтный конфиг при наличии своего
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Кладём статические файлы
COPY index.html /usr/share/nginx/html/index.html

# Nginx уже слушает 80 внутри контейнера. Пробрасываем наружу 8080 в docker run/compose
EXPOSE 80

# Простая проверка, что сервис отвечает
HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD wget -qO- http://127.0.0.1/ || exit 1
