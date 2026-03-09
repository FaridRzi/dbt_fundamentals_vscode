SELECT
    orders.order_id,
    orders.customer_id,
    sum(payments.amount_local) as amount_local
FROM {{ref('stg_jaffle_shop__orders')}} as orders
left join {{ref('stg_stripe__payments')}} as payments
    using(order_id)
where payments.payment_status = 'success'
GROUP BY 1,2