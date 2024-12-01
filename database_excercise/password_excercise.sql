create database if not exists MyData;

use MyData;

create table if not exists custom_table (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Passwords VARCHAR(100),
    Signs INT
);

insert into custom_table (Name, Passwords, Signs) values
('PC', 'hasło', 5),
('something', 'telHasł', 7),
('pin', 'hasł', 4);

select * from custom_table;
select * from custom_table where Signs > 4;

drop database MyData;