CREATE TABLE temporary_table as (SELECT "public"."sale_order_line"."id" AS "id", "order"."date_order" AS "date_order","public"."sale_order_line"."name" AS "name", "public"."sale_order_line"."product_uom_qty" AS "product_uom_qty", "product_uom"."name" AS "name_3", "public"."sale_order_line"."price_unit" AS "price_unit", "public"."sale_order_line"."price_subtotal" AS "price_subtotal", "currency"."name" AS "currency_name", "price_list"."name" AS "price_list_name", "public"."sale_order_line"."order_id" AS "order_id", "public"."sale_order_line"."qty_to_invoice" AS "qty_to_invoice", "public"."sale_order_line"."qty_invoiced" AS "qty_invoiced", "public"."sale_order_line"."discount" AS "discount", "public"."sale_order_line"."price_reduce" AS "price_reduce", "public"."sale_order_line"."qty_delivered" AS "qty_delivered",  "public"."sale_order_line"."price_reduce_taxinc" AS "price_reduce_taxinc", "public"."sale_order_line"."price_total" AS "price_total", "public"."sale_order_line"."invoice_status" AS "invoice_status",  "public"."sale_order_line"."expiry_date" AS "expiry_date", "public"."sale_order_line"."dispensed" AS "dispensed", "order"."id" AS "id_2", "order"."invoice_status" AS "order_invoice_status", "order"."care_setting" AS "care_setting", "order"."discount_type" AS "discount_type", "order"."discount" AS "order_discount", "public"."sale_order_line"."external_order_id" AS "order_uuid","order_partner"."name" AS "partner_name", "order_partner"."display_name" AS "partner_display_name", "order_partner"."uuid" AS "partner_uuid", "product"."uuid" AS "product_uuid", "company"."name" AS "company_name", "payment_term"."name" AS "payment_term_name" FROM "public"."sale_order_line" LEFT JOIN "public"."sale_order" "order" ON "public"."sale_order_line"."order_id" = "order"."id" LEFT JOIN "public"."res_partner" "order_partner" ON "public"."sale_order_line"."order_partner_id" = "order_partner"."id" LEFT JOIN "public"."product_uom" "product_uom" ON "public"."sale_order_line"."product_uom" = "product_uom"."id" LEFT JOIN "public"."res_currency" "currency" ON "public"."sale_order_line"."currency_id" = "currency"."id" LEFT JOIN "public"."product_product" "product" ON "public"."sale_order_line"."product_id" = "product"."id" LEFT JOIN "public"."product_pricelist" "price_list" ON "order"."pricelist_id" = "price_list"."id" LEFT JOIN "public"."res_company" "company" ON "public"."sale_order_line"."company_id" = "company"."id" LEFT JOIN "public"."account_payment_term" "payment_term" ON "order"."payment_term_id" = "payment_term"."id" ORDER BY "public"."sale_order_line"."id")
