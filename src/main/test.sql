use adlister_db;
insert into users (username, password, email)
values ('Dan', 'dan123', 'dan@gmail.com'),
       ('Kevin', 'kevin13', 'kev@gmail.com');

insert into ads (user_id, title, description) values
(2, 'Bike for sale', 'Come buy my bike'),
(1, 'Car', 'Want to buy a used car');