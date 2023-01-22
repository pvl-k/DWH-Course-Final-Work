### For building docker image:
docker build -t postgres4bookings .

### For first start docker container:
>docker run --name=postgres4bookings-container -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres4bookings

### After first start you need to enter into bash:
>docker exec -it pipeline-app-container bash
### and next run ETL python-script:
>python3 pipeline.py

### For all next starts:
>docker start postgres4bookings-container

### For stops:
>docker stop postgres4bookings-container

### ER model of Data:
![db_F1_Stats](https://user-images.githubusercontent.com/63403198/180854011-674cac50-82d1-4104-9bf8-580eb36fa766.png)
