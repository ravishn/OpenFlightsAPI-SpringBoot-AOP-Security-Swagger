insert into AIRPORTS (select * from CSVREAD('C:\VisualStudioCodeWorkspace\demo\OpenFlightsAPI-SpringBoot-AOP-Security-Swagger-master\src\main\resources\airports.dat'));

insert into ROUTES (select * from CSVREAD('C:\VisualStudioCodeWorkspace\demo\OpenFlightsAPI-SpringBoot-AOP-Security-Swagger-master\src\main\resources\routes.dat'));

insert into AIRLINES(select * from CSVREAD('C:\VisualStudioCodeWorkspace\demo\OpenFlightsAPI-SpringBoot-AOP-Security-Swagger-master\src\main\resources\airlines.dat'));