use MyDatabase;


/*
OVER() Window Function
It is the replacement of Group By.It creates a window with multiple rows.
Query:Find sales dept wise with emp_id,product_id details
*/
Select dept ,sum(sales) from employeeSales group by dept;


select * from employeeSales;
Select emp_id,dept,product_id, SUM(sales) over(partition by dept) as 'Total_sales' from employeeSales;


/*
Partition by clause is used to divide the result set from the query into data subsets.
Query:Find sales dept wise with emp_id,product_id details
*/