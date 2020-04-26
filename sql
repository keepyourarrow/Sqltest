create table Category(
id integer unique not null,
name varchar(100)
)

create table Product (
id integer unique not null,
name varchar(100)
);

create table product_categories(
product_id int,
category_id int
)

insert into Category values (1, 'Category1')
insert into Category values (2, 'Category2')

insert into Product values (1, 'Item1')
insert into Product values (2, 'Item2')
insert into Product values (3, 'Item3')

insert into Product values (4, 'Item4')
insert into Product values (5, 'Item5')
insert into Product values (6, 'Item6')

insert into Product values (7, 'Item7')
insert into Product values (8, 'Item8')
insert into Product values (9, 'Item9')



insert into product_categories (category_id, product_id ) values (1, 1)
insert into product_categories (category_id, product_id ) values (1, 2)
insert into product_categories (category_id, product_id ) values (1, 3)

insert into product_categories (category_id, product_id ) values (2, 4)
insert into product_categories (category_id, product_id ) values (2, 5)
insert into product_categories (category_id, product_id ) values (2, 6)
insert into product_categories (category_id, product_id ) values (2, 3)

insert into product_categories (category_id, product_id) values (null , 7)
insert into product_categories (category_id, product_id) values (null , 8)
insert into product_categories (category_id, product_id) values (null , 9)



select CONCAT(Product.[name],' - ' ,Category.[name]) from Product 
left join product_categories on Product.id = product_id
left join Category on Category.id = category_id
