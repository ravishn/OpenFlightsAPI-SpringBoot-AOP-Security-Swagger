-- use this for running locally
-- insert into AIRPORTS (select * from CSVREAD('C:\VisualStudioCodeWorkspace\demo\OpenFlightsAPI-SpringBoot-AOP-Security-Swagger-master\src\main\resources\airports.dat'));

-- insert into ROUTES (select * from CSVREAD('C:\VisualStudioCodeWorkspace\demo\OpenFlightsAPI-SpringBoot-AOP-Security-Swagger-master\src\main\resources\routes.dat'));

-- insert into AIRLINES(select * from CSVREAD('C:\VisualStudioCodeWorkspace\demo\OpenFlightsAPI-SpringBoot-AOP-Security-Swagger-master\src\main\resources\airlines.dat'));


-- use this for building and running the application inside Docker container
insert into AIRPORTS (select * from CSVREAD('src\main\resources\airports.dat'));

insert into ROUTES (select * from CSVREAD('src\main\resources\routes.dat'));

insert into AIRLINES(select * from CSVREAD('src\main\resources\airlines.dat'));