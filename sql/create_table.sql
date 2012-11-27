create table `orders`(
id int(11) not null auto_increment comment 'id of order',
order_number varchar(11) not null comment 'order number',
order_date date comment 'order date',
status varchar(20) comment 'order status',
total int comment 'order amount',
primary key (id)
) engine=innodb default charset=utf8;
