

CREATE TABLE laptop(
    id Integer Primary Key,
    brand varchar(25),
    color varchar(25),
    price Integer
);


INSERT INTO laptop (id, brand, color,price)
VALUES (1,'asus','gray','1000');

INSERT INTO laptop (id, brand, color,price)
VALUES (2,'apple','blue', 1200);

update laptop
set color
    = 'grey'
where id=1;

select * from laptop;