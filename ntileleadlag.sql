/*
NTILE(N) SQL RANK FUNCTION
we use the ntile(n) function to distribute the number of rows in the specified (N) number of groups. 
*/

--use MyDatabase;
--select emp_id,product_id,dept,sales, NTILE(2) over(order by sales desc) as 'Row_Number' from employeeSales;




/*
LAG() & LEAD() function 
The LAG function has the ability to fetch data from a previous row,
while the LEAD fetched data from a subsequent row.
*/

select emp_id,product_id,dept,sales, lag(sales) over(order by  product_id asc) as 'Previous Year' from employeeSales;