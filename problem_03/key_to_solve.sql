select product.sku, product.product_name
from product
left join invoice_item on invoice_item.product_id = product.id
where product.id not in (
    select product_id from invoice_item
)
order by product.sku asc