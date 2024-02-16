/*
    ~~~ Roy Phelps ~~~
    Some simple queries for SQL on a database
*/

select * from shipment;
select customer.CompanyName, shipment.idshipment, shipment.Quantity
from customer join shipment on customer.idCustomer = shipment.Customer_idCustomer;


select warehouse.shipment.idShipment, warehouse.shipment.Scantag, warehouse.shipment.quantity, warehouse.customer.idCustomer, warehouse.customer.CompanyName, warehouse.employee.idEmployee, warehouse.employee.EmpFirstName
from shipment
inner join warehouse.customer
on warehouse.customer.idCustomer=warehouse.shipment.Customer_idCustomer
inner join warehouse.employee
on warehouse.employee.idEmployee=warehouse.shipment.Employee_idEmployee
order by warehouse.shipment.Scantag asc;

SELECT warehouse.customer.State,  warehouse.customer.CompanyName,sum(warehouse.shipment.Quantity) as 'Total Quantity Shipped to This Customer' , 
max(warehouse.employee.Commission) as 'Maximum Employee Commission in these shipments'
FROM warehouse.shipment
INNER JOIN warehouse.customer
ON warehouse.customer.idCustomer=warehouse.shipment.Customer_idCustomer
INNER JOIN warehouse.employee
ON warehouse.employee.idEmployee=warehouse.shipment.Employee_idEmployee
WHERE warehouse.employee.Commission<=.10
GROUP BY warehouse.customer.CompanyName, warehouse.customer.State
ORDER BY warehouse.customer.State asc, sum(warehouse.shipment.Quantity) desc;



select  warehouse.employee.EmpFirstName, count(warehouse.shipment.Quantity) as 'Number of Shipments', warehouse.customer.CompanyName 
from warehouse.shipment
inner join warehouse.customer
on warehouse.customer.idCustomer=warehouse.shipment.Customer_idCustomer
right join warehouse.employee
on warehouse.employee.idEmployee=warehouse.shipment.Employee_idEmployee
group by  warehouse.employee.EmpFirstName, warehouse.customer.CompanyName, warehouse.employee.idEmployee
order by count(warehouse.shipment.Quantity) asc, warehouse.employee.idEmployee;

select warehouse.shipment.idShipment,  warehouse.customer.CompanyName as 'Customer ComanyName', warehouse.product.Manufacturer,  warehouse.product.ProductName, warehouse.shipment.Scantag, warehouse.product.PricePerUnit, warehouse.shipment.Quantity, (warehouse.product.PricePerUnit * warehouse.shipment.Quantity) as 'Order Total'
from warehouse.shipment
inner join warehouse.customer
on warehouse.customer.idCustomer=warehouse.shipment.Customer_idCustomer
inner join warehouse.product
on warehouse.product.idProduct=warehouse.shipment.Product_idProduct
order by warehouse.shipment.idShipment asc;

select  warehouse.product.Manufacturer, warehouse.product.ProductName, sum(warehouse.shipment.Quantity) as 'Total Shipment Quantity' 
from warehouse.shipment
inner join warehouse.product
on warehouse.product.idProduct=warehouse.shipment.Product_idProduct
inner join warehouse.employee
on warehouse.employee.idEmployee=warehouse.shipment.Employee_idEmployee
inner join warehouse.customer
on warehouse.customer.idCustomer=warehouse.shipment.Customer_idCustomer
where  warehouse.employee.EmpLocation in ('MD', 'NY', 'CA') and warehouse.customer.Balance=0 and warehouse.shipment.Quantity>0
group by  warehouse.product.Manufacturer, warehouse.product.ProductName
order by sum(warehouse.shipment.Quantity) desc, warehouse.product.Manufacturer, warehouse.product.ProductName;



select  warehouse.product.Manufacturer, warehouse.product.ProductName, warehouse.customer.CompanyName, count(warehouse.shipment.Quantity) as 'How Many Shipments?' 
from warehouse.shipment
right join warehouse.product
on warehouse.product.idProduct=warehouse.shipment.Product_idProduct
left join warehouse.customer
on warehouse.customer.idCustomer=warehouse.shipment.Customer_idCustomer 
group by  warehouse.product.Manufacturer, warehouse.product.ProductName, warehouse.customer.CompanyName
order by count(warehouse.shipment.Quantity), warehouse.product.Manufacturer asc, warehouse.product.ProductName;

