with orders as (

    select * from {{ref('stg_jaffle_shop__orders')}}

), payments as (

    select * from {{ref('stg_stripe__payment')}}

),
order_payments as (

    select
        order_id,
        sum(case when status = 'succeeded' then amount end) as total_amount_paid
    from payments
    group by 1

),
final as (

    select
        ord.order_id,
        ord.customer_id,
        ord.order_date,
        coalesce(op.total_amount_paid, 0) as amount_paid

    from orders ord

    left join order_payments op using (order_id)

)
select 
* from final
