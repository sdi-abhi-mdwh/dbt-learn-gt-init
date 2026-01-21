select
    id as payment_id,
    orderid as order_id,
    created as created_at,
    paymentmethod as payment_method,
    status,
    amount/100 as amount,
from
    raw.stripe.payment