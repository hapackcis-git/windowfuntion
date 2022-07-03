
use MyDatabase;
/*
Rank() Window Function
The RANK() ranking window function returns a unique rank number for each distinct row
within the partition according to a specified column value.
RANK() function always work on over() function with order by.


DENSE_RANK() function is similar to the Rank() except for one difference ,it does not skip any ranks when ranking rows
*/

select * from employeeSales;
select emp_id,product_id,dept,sales, RANK() over(partition by dept order by sales desc) as 'sales_rank' ,
  Dense_RANK() over(partition by dept order by sales desc) as 'sales_rank' from
employeeSales;

