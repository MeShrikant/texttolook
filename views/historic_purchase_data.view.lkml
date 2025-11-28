# The name of this view in Looker is "Historic Purchase Data"
view: historic_purchase_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: manik.HistoricPurchaseData ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Branch" in Explore.

  dimension: branch {
    type: string
    sql: ${TABLE}.Branch ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: counter_no {
    type: number
    sql: ${TABLE}.CounterNo ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: disc_amt {
    type: string
    sql: ${TABLE}.DiscAmt ;;
  }

  dimension: hsncode {
    type: string
    sql: ${TABLE}.HSNCode ;;
  }

  dimension: imeino {
    type: string
    sql: ${TABLE}.IMEIno ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.Model ;;
  }

  dimension: mproduct_id {
    type: string
    sql: ${TABLE}.MProductId ;;
  }

  dimension: mrp {
    type: string
    sql: ${TABLE}.MRP ;;
  }

  dimension: narration {
    type: string
    sql: ${TABLE}.Narration ;;
  }

  dimension: product_markdown {
    type: number
    sql: ${TABLE}."Product Markdown" ;;
  }

  dimension: product_markup {
    type: number
    sql: ${TABLE}."Product Markup" ;;
  }

  dimension: product_mop {
    type: string
    sql: ${TABLE}.ProductMOP ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: product_purchase_remark {
    type: string
    sql: ${TABLE}."Product Purchase Remark" ;;
  }

  dimension: product_remark {
    type: string
    sql: ${TABLE}."Product Remark" ;;
  }

  dimension: productid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Productid ;;
  }

  dimension: purchase_rate {
    type: string
    sql: ${TABLE}."Purchase Rate" ;;
  }

  dimension: sale_price {
    type: string
    sql: ${TABLE}.SalePrice ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.Subcategory ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.Supplier ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: supplier_billdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."Supplier Billdate" ;;
  }

  dimension: supplier_gstin {
    type: string
    sql: ${TABLE}."Supplier GSTIN" ;;
  }

  dimension: supplier_short_name {
    type: string
    sql: ${TABLE}."Supplier ShortName" ;;
  }

  dimension: supplier_type {
    type: string
    sql: ${TABLE}."Supplier Type" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: u_product_disc_per {
    type: string
    sql: ${TABLE}."uProduct DiscPer" ;;
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
    drill_fields: [product_name, supplier_short_name]
  }
}
