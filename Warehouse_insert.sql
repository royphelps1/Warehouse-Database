/*
~~~ Roy Phelps ~~~
 SQL code to insert data into a warehouse database
*/
use warehouse;

-- Verify Warehouse is empty!
select * from employee limit 10;
select * from product limit 10;
select * from customer limit 10;
select * from shipment limit 10;

-- Insert employees

INSERT INTO `employee` (`EmpFirstName`, `EmpLastName`, `EmpLocation`, `Commission`) 
VALUES 
('Aletta', 'Smith','NY','0.09'),
('Betty', 'Johnson','NY','0.02'),
('Charlie', 'Jackson','MD','0.06'),
('David', 'Lee','CA','0.04'),
('Egbert', 'Gomez','CA','0.05'),
('Flanders', 'Williams','CA','0.01'),
('Girard', 'Patel','CA','0.08'),
('Henry', 'Smith','NC','0.12'),
('Isabel', 'Johnson','NC','0.02'),
('Juliet', 'Jackson','TN','0.1'),
('Liam', 'Brown','TN','0.09'),
('Kyle', 'Garcia','TN','0.02'),
('Lee', 'Miller','NC','0.06'),
('Oliver', 'Davis','MD','0.04'),
('James', 'Rodriguez','MD','0.05'),
('Emma', 'Martinez','MD','0.01'),
('Olivia', 'Wilson','NY','0.08'),
('Sophia', 'Moore','IL','0.15'),
('Charlotte', 'Lee','IL','0.02'),
('Amelia', 'Nguyen','IL','0.12');


-- Insert products 
INSERT INTO `product` (`ProductName`, `Manufacturer`, `PricePerUnit`, `Status`) 
VALUES 
('Widget Mini', 'General Widgets','7.6','In Stock'),
('Widget Maximus', 'General Widgets','11.3','In Stock'),
('Widget Giant', 'General Widgets','19.99','In Stock'),
('Dynamic W', 'General Widgets','5.8','Temporarily Out'),
('Widgenator', 'General Widgets','3','In Stock'),
('Corkscrew', 'Drill Bits R Us','4.7','In Stock'),
('Twister', 'Drill Bits R Us','6.7','In Stock'),
('Iron Man', 'Drill Bits R Us','12.4','Unavailable'),
('To Be Wild', 'Born Inc','13.6','In Stock'),
('To Run', 'Born Inc','9.8','In Stock'),
('Stop Dreaming', 'Neverland','2.1','Temporarily Out'),
('Give Up', 'Neverland','13.5','In Stock'),
('Curried Basketball', 'Stephen','10.5','In Stock'),
('King o Horrors', 'Stephen','11.2','In Stock'),
('Hawking Galactic', 'Stephen','59.95','Unavailable');

select * from product;
select Manufacturer, ProductName from product;

-- Insert customers 
INSERT INTO `customer` (`CompanyName`, `StreetAddress`, `City`, `State`, `Zip`, `Balance`) VALUES 
('ABC Incorporated', '77 West 66th Street','New York','NY','10023','0'),
('Do Re Mi Limited', '2592 Oak Road','Walnut Creek','CA','94596','0'),
('Huron Bay Exporters', '80 Old Avon Township Road','Skanee','MI','49962','0'),
('Huron Bay Trading', '10 Lower Skanee Road','Skanee','MI','49962','0'),
('Erie Lackawanna', '299 West Summit Street','Crown Point','IN','46307','0'),
('Lake Erie Guitars', '1100 East 9th Street','Cleveland','OH','44114','15000'),
('Lake Michigan Exchange', '76 Maritime Drive','Manitowoc','WI','54220','0'),
('Lakeland Imports', '12 North 20th Street','Manitowoc','WI','54220','0'),
('Midland Imports', '3997 Saginaw Road','Midland','MI','48640','7500'),
('Southland Imports', '6001 Aviation Road','St. Louis','MO','63123','0'),
('Thumb Exports', '301 West Genesee Avenue','Saginaw','MI','48602','0'),
('Bucks Dream Trading', '100 West Mesick Avenue','Mesick','MI','49668','0'),
('Bridge Fudge Retail', '230 East Central Avenue','Mackinaw City','MI','49701','0'),
('Saint Ignace Fire Pits', '150 N State Street','St Ignace','MI','49781','0'),
('Bark Point General Store', '871 Superior Avenue','Bark Point','MI','49444','0')
;

select * from customer;

-- Insert shipments
INSERT INTO `shipment` (`Quantity`, `Customer_idCustomer`, `Product_idProduct`, `Employee_idEmployee`) 
INSERT INTO `shipment` (`Quantity`, `Scantag`, `ReferenceNum`, `Customer_idCustomer`, `Product_idProduct`, `Employee_idEmployee`) 
VALUES 
('9', 'REY-817','1975','500','94596','2'),
('5', 'XIY-939','8685','508','94602','5'),
('1', 'VED-591','3460','504','94602','6'),
('1', 'VAM-917','8413','500','94602','1'),
('8', 'GAS-923','2230','504','94596','7'),
('1', 'BEP-180','2948','508','94608','8'),
('1', 'FIJ-356','2829','506','94608','3'),
('1', 'BAT-168','7625','508','94601','4'),
('1', 'JUM-998','7785','505','94602','10'),
('1', 'WEW-363','4302','502','94604','9'),
('1', 'VUL-962','8877','505','94605','5'),
('15', 'JUV-141','3614','505','94597','18'),
('8', 'JAZ-864','8327','508','94596','4'),
('1', 'DAW-291','8771','502','94602','12'),
('14', 'ZEY-347','8023','508','94600','2'),
('6', 'SAL-827','7448','505','94599','6'),
('1', 'WIM-747','5777','500','94599','3'),
('14', 'BEC-970','2768','505','94602','2'),
('1', 'TEP-181','7328','508','94604','18'),
('1', 'LES-243','2678','508','94596','1'),
('1', 'CAF-268','1583','501','94606','8'),
('16', 'HAK-619','4101','508','94604','18'),
('12', 'DEN-555','6150','502','94596','3'),
('1', 'QUV-941','6709','505','94597','7'),
('7', 'VAL-677','5899','508','94605','6'),
('12', 'JUH-406','2122','505','94608','10'),
('1', 'DEM-562','1036','504','94608','16'),
('6', 'VAH-244','4007','508','94602','20'),
('1', 'NAV-388','4932','508','94608','4'),
('1', 'NEH-325','2293','505','94597','7'),
('1', 'VIT-342','4971','502','94609','9'),
('20', 'XUJ-655','4082','502','94604','3'),
('13', 'HED-728','5733','508','94606','8'),
('16', 'REX-359','2591','508','94609','3'),
('1', 'MUW-455','9942','508','94596','1'),
('1', 'VIZ-192','9850','505','94609','7'),
('1', 'RUG-924','9819','501','94604','15'),
('1', 'VAQ-408','5534','508','94608','13'),
('19', 'LID-615','9268','500','94608','5'),
('8', 'RIJ-977','2118','502','94604','10'),
('16', 'HAX-402','7347','505','94604','17'),
('8', 'GUV-740','7246','504','94608','12'),
('1', 'RIM-127','7078','504','94606','5'),
('3', 'BIZ-735','6018','500','94601','7'),
('6', 'JUT-675','3018','506','94607','17'),
('1', 'ZIG-295','6524','508','94600','7'),
('1', 'HIQ-148','6379','508','94604','3'),
('10', 'XEF-191','6080','508','94609','18'),
('15', 'BAH-153','9778','500','94607','5'),
('16', 'PUV-222','3967','502','94597','15'),
('9', 'DAD-816','4228','502','94597','15'),
('1', 'CEB-609','7077','510','94604','4'),
('8', 'RAY-703','1999','511','94602','9'),
('18', 'YAT-539','6667','512','94604','1'),
('1', 'YUX-146','4176','513','94602','18'),
('4', 'WUZ-562','7282','514','94600','7'),
('18', 'SAB-979','5000','511','94604','5'),
('12', 'JEJ-686','7626','512','94604','17'),
('1', 'RIY-399','5349','513','94608','6'),
('1', 'JEY-471','9935','514','94599','4'),
('1', 'LEL-798','4175','512','94605','2')
;



select * from shipment;

-- Quick join to verify all working properly
select customer.CompanyName, shipment.idshipment, shipment.Quantity
from customer join shipment on customer.idCustomer = shipment.Customer_idCustomer
;

