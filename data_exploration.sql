SELECT * FROM sales.customers;

Select COUNT(*) from sales.customers;

Select customer_type,COUNT(*) from sales.customers
group by customer_type;

select distinct customers.customer_type
from sales.customers;


SELECT * FROM sales.date;

select distinct year
FROM sales.date;


SELECT * FROM sales.markets;

select distinct markets_name
from sales.markets;

SELECT * FROM sales.products;

SELECT distinct product_type FROM sales.products;

SELECT product_code FROM sales.products
where product_type='';


SELECT * FROM sales.transactions;

Select COUNT(*) from sales.transactions;

#Show transaction having sales amount zero or less
SELECT * FROM sales.transactions
where sales_amount <=0;


SELECT * FROM sales.transactions
where sales_qty =0;

#Show transactions having USD currency
SELECT * FROM sales.transactions
where currency = 'USD';

#Show transactions for Chennai market (market code for chennai is Mark001)
SELECT * FROM sales.transactions where market_code='Mark001';

#Show total revenue in year 2020
select sum(t.sales_amount) from sales.transactions t
join sales.date d on t.order_date = d.date
where d.year =2020;

select sum(t.sales_amount) from sales.transactions t
join sales.date d on t.order_date = d.date
where d.year =2020 and t.market_code ='Mark001';

#Show top 10 most selling projects
select product_code, count(product_code)
from sales.transactions
group by product_code
order by count(product_code) desc
limit 10;


#INR issue

select count(*) 
from sales.transactions
where currency ='INR';
select count(*) 
from sales.transactions
where currency ='INR\r';

select * 
from sales.transactions
where currency ='USD\r'or currency ='USD'