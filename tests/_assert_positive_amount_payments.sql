--  We can't have negative. We can have 0 when 100% is voucher funded.
select
    order_id,
    sum(amount) as total_amount
from {{ref('stg_stripe__payments')}}
group by 1
having total_amount < 0