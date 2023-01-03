select count(*) from books;

select count(*) from users;

select * from book_borrow
where is_returned = 0;