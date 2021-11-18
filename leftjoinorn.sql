
use salesdb
alter view fxp
as
select  top 1000 Sales.SalesPersonID idd,avg(Sales.Quantity*Products.Price) crp  from Sales,Employees,Products where Sales.SalesPersonID=Employees.EmployeeID and Sales.ProductID=Products.ProductID
group by Sales.SalesPersonID

use Salesdb
select * from fxp

select idd,crp from fxp
select idd ,crp  from fxp 

select   a.SalesID,a.SalesPersonID,e.FirstName,e.LastName,a.Quantity*c.Price z  from Sales a 
left join Products c on a.ProductID=c.ProductID
left join fxp d on a.SalesPersonID = d.idd
left join Employees e on a.SalesPersonID=e.EmployeeID

where crp < a.Quantity*c.Price order by a.SalesPersonID asc







select CustomerID,count(*) from Sales group by CustomerID








where SalesPersonID=idd and b.crp< a.Quantity*c.Price


select * from Sales

