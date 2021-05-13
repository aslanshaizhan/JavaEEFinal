create table comments(
                         id serial primary key,
                         comment text,
                         userid int,
                         blogid int,
                         foreign key(userid) references users(id),
                         foreign key(blogid) references blogs(id)
)