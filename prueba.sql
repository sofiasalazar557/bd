SELECT *
FROM treintaco-bz.data_marts_pos.pos_logistic
WHERE  status_operator NOT IN("Entregado", "ENTREGADA POR TREINTA", "Servicio no creado") 
and ( (tipo_envio = "LOCAL" and date(purchase_date) = date("2023-03-21") and extract(hour from purchase_date)<18) or (tipo_envio = "NACIONAL" and date(delivery_date) = date("2023-03-22")) )
