select * from customer_behavior limit 20

--1 What is the total revenue generated from male vs female customers?

select gender, sum(purchase_amount) as revenue
from customer_behavior
group by gender;

--2 Which customers used the discount but still spent more than the average purchase amount?

select customer_id, purchase_amount
from customer_behavior
where discount_applied= 'Yes' and purchase_amount>= (select avg(purchase_amount) from customer_behavior)

--3 Which are the top 5 products with the highest average review rating

select item_purchased, round(avg(review_rating::numeric),2) as average_product_rating
from customer_behavior
group by item_purchased
order by avg(review_rating) desc
limit 5;

--4 Compare the average purchase amount between standard and express shipping

select shipping_type, 
avg(purchase_amount) 
from customer_behavior
where shipping_type='Express' or shipping_type='Standard'
group by shipping_type

--5 Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non- subscribers.
select subscription_status,
count(customer_id)as total_customers,
avg(purchase_amount) as average_spending,
sum(purchase_amount) as total_revenue
from customer_behavior
group by subscription_status
order by total_revenue, average_spending desc;

--6 Which 5 products have the highest percentage of purchases with discounts applied?

select item_purchased,
round(100* sum(case when discount_applied='Yes' then 1 else 0 end)/count(*),2) as discount_rate
from customer_behavior
group by item_purchased
order by discount_rate desc
limit 5;

--7 Segment customers into new, returning and loyal based on their total number of previous purchases and show the count of each segment.
with customer_type as (
select customer_id, previous_purchases,
case
when previous_purchases=1 then 'New'
when previous_purchases between 2 and 10 then 'Returning'
else 'Loyal'
end as customer_segment
from customer_behavior)

select customer_segment, count(*) as number_of_customers
from customer_type
group by customer_segment;

-- or
select 
case
when previous_purchases=1 then 'New'
when previous_purchases between 2 and 10 then 'Returning'
else 'Loyal'
end as customer_segment,
count(customer_id) as number_of_customers
from customer_behavior
group by customer_segment
order by number_of_customers;

--8 What are the top 3 most purchased products purchased within each category?

with item_counts as(
select category,
item_purchased,
count(*) as total_orders,
row_number() over(partition by category order by count(*)desc) as item_rank
from customer_behavior
group by category, item_purchased

)
select item_rank, category, item_purchased, total_orders
from item_counts
where item_rank<=3;

--9 Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?

select subscription_status,
count(customer_id) as repeat_buyers
from customer_behavior
where previous_purchases>5
group by subscription_status

--10 what is the revenue contribution of each age group?

select age_group, sum(purchase_amount) as revenue
from customer_behavior
group by age_group
order by revenue desc;




