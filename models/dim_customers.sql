with customers as (
select id as customer_id,
       first_name,
       last_name
from raw.jaffle_shop.customers)

, orders as (
select id as order_id,
       user_id as customer_id,
       order_date,
       status as order_status
from raw.jaffle_shop.orders)

select a.customer_id, a.first_name, a.last_name, b.order_date, b.order_status
from customers a 
left join orders b on a.customer_id = b.customer_id 