create schema fb
go

create table Users
(
	Id int identity
		constraint Users_pk
			primary key nonclustered,
	UserName varchar(500) not null,
	Password varchar(1000) not null,
	FirstName varchar(1000) not null,
	LastName varchar(1000),
	isDeleted bit,
	CreatedOn datetime,
	CreatedBy varchar(500),
	UpdatedOn datetime,
	UpdatedBy varchar(500)
)
go

create unique index Users_UserName_uindex
	on Users (UserName)
go

