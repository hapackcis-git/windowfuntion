/*
First_Value() & Last_Value() function 
Both functions are straight forward:they either return the first or the last value of and ordered set.

*/

use MyDatabase;
select emp_id,product_id,dept,sales, First_Value(sales) over(order by product_id) as 'First Value'
 from employeeSales;