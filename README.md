## Описание программы
Секундомер которому можно задать определенное время и с него начать старт

### Запуск с помощью Docker
```
docker build -t stopwatch-nginx:latest . 
docker run --name stopwatch -p 8080:80 --restart unless-stopped -d stopwatch-nginx:latest 
```

