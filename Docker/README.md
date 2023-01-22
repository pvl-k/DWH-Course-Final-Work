### For building docker image:
docker build -t postgres4bookings .

### For first start docker container:
docker run --name=postgres4bookings-container -d -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres4bookings

### For all next starts:
docker start postgres4bookings-container

### For stops:
docker stop postgres4bookings-container
