-- Monthly Revenue and Order Volume
select
    year(ord.orderDate) as year,
    month(ord.orderDate) as month,
    round(sum(orddtls.quantityOrdered * orddtls.priceEach), 2) as monthly_revenue,
    count(distinct ord.orderNumber) as order_count
from
    orders ord
join 
    orderdetails orddtls on ord.orderNumber = orddtls.orderNumber
group by
    year(ord.orderDate), month(ord.orderDate)
order by
    year(ord.orderDate), month(ord.orderDate);
    
    
-- Top 3 Months by Revenue
select 
    year(ord.orderdate) as year,
    month(ord.orderdate) as month,
    round(sum(ordtls.quantityordered * ordtls.priceeach), 2) as monthly_revenue,
    count(distinct ord.ordernumber) as order_count
from 
    orders ord
join 
    orderdetails ordtls on ord.ordernumber = ordtls.ordernumber
group by 
    year(ord.orderdate), month(ord.orderdate)
order by 
    monthly_revenue desc
limit 3;


