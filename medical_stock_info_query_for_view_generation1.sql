select
m.id,
m.medicine_id,
m.name,
m.category,
m.supplier_id,
m.cost_price,
m.unit_price,
m.stock_qty,
m.expiry_date,
m.manufacture_date,
m.batch_number,
m.reorder_level,
s.name as supplier_name

from medical_stock as m
left join supplier as s
on m.supplier_id=s.supplier_id;