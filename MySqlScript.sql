create table conversations(
   conversationsid integer primary key,
   name varchar(255) not null
);

create table Messages(
   messageid integer primary key,
   loginid integer not null,
   conversationsid integer not null,
   messagetext varchar(255) not null,
   offset integer not null,
   messagedate DATETIME not null,
   foreign key(loginid) references login(loginid),
   foreign key(conversationsid) references conversations(conversationsid)
);

create table login(
	loginid integer primary key,
	username varchar(255) not null,
	wachtwoord varchar(255) not null
);
hj
create table ConversationsToLogin(
	conversationsid integer not null,
	loginid integer not null,
	FOREIGN KEY(conversationsid)REFERENCES conversations(conversationsid),
	foreign key(loginid) references login(loginid)
);

create table hibernate_sequence (next_val bigint);
insert into hibernate_sequence values ( 1 );