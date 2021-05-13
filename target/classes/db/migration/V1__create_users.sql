create table users(
                      id serial primary key,
                      name varchar(100),
                      email varchar(50),
                      role varchar(10),
                      password varchar(50)
)