# The name of this view in Looker is "Historic Sales Data"
view: historic_sales_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: manik.HistoricSalesData ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Actual Sale Rate" in Explore.

  dimension: actual_sale_rate {
    type: string
    sql: ${TABLE}."Actual sale Rate" ;;
  }

  dimension: batchno {
    type: string
    sql: ${TABLE}.batchno ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: billtime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Billtime ;;
  }

  dimension: branch {
    type: string
    sql: ${TABLE}.Branch ;;
  }

  dimension: branch_short_name {
    type: string
    sql: ${TABLE}.BranchShortName ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: counter_no {
    type: number
    sql: ${TABLE}.CounterNo ;;
  }

  dimension: cpugst {
    type: string
    sql: ${TABLE}."CPU+GST" ;;
  }

  dimension: custid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Custid ;;
  }

  dimension: customer_address {
    type: string
    sql: ${TABLE}."Customer Address" ;;
  }

  dimension: customer_group {
    type: string
    sql: ${TABLE}.CustomerGroup ;;
  }

  dimension: customer_gstin {
    type: string
    sql: ${TABLE}.CustomerGSTIN ;;
  }

  dimension: customer_panno {
    type: string
    sql: ${TABLE}.CustomerPANNo ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.CustomerState ;;
  }

  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date ;;
  }

  dimension: ean_product_id {
    type: string
    sql: ${TABLE}."EAN ProductId" ;;
  }

  dimension: ewaybillno {
    type: string
    sql: ${TABLE}.EWAYBIllno ;;
  }

  dimension: expiry_date {
    type: string
    sql: ${TABLE}.ExpiryDate ;;
  }

  dimension: hsncode {
    type: string
    sql: ${TABLE}.HSNCode ;;
  }

  dimension: last_pur_date {
    type: string
    sql: ${TABLE}.LastPurDate ;;
  }

  dimension: last_pur_qty {
    type: string
    sql: ${TABLE}.LastPurQty ;;
  }

  dimension: line_amt {
    type: string
    sql: ${TABLE}.LineAmt ;;
  }

  dimension: line_disc {
    type: number
    sql: ${TABLE}."LineDisc%" ;;
  }

  dimension: line_discount_amt {
    type: number
    sql: ${TABLE}."Line Discount Amt" ;;
  }

  dimension: mrp {
    type: string
    sql: ${TABLE}.MRP ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.ProductId ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."Product Name" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: re_order_qty {
    type: number
    sql: ${TABLE}.ReOrderQty ;;
  }

  dimension: reorder_level {
    type: number
    sql: ${TABLE}.REorderLevel ;;
  }

  dimension: sale_mobile_no {
    type: string
    sql: ${TABLE}.SaleMobileNo ;;
  }

  dimension: sale_rate {
    type: string
    sql: ${TABLE}.SaleRate ;;
  }

  dimension: salesman {
    type: string
    sql: ${TABLE}.Salesman ;;
  }

  dimension: salesman_id {
    type: number
    sql: ${TABLE}.SalesmanId ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.Subcategory ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."User" ;;
  }

  dimension: vatgst_ {
    type: string
    sql: ${TABLE}."VAT/GST %" ;;
  }

  dimension: voucher_no {
    type: number
    sql: ${TABLE}.VoucherNo ;;
  }
  measure: count {
    type: count
    drill_fields: [branch_short_name, product_name]
  }
}
