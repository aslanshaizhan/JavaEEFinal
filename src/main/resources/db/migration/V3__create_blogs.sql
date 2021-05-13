create table blogs(
                      id serial primary key,
                      title varchar(500),
                      body text,
                      userid int,
                      foreign key(userid) references users(id)
)