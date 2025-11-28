# The name of this view in Looker is "Historic Stock"
view: historic_stock {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: manik.HistoricStock ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

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

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: cpu {
    type: string
    sql: ${TABLE}.CPU ;;
  }

  dimension: gstper {
    type: string
    sql: ${TABLE}.GSTPer ;;
  }

  dimension: imeino {
    type: string
    sql: ${TABLE}.IMEINo ;;
  }

  dimension: last_pur_qty {
    type: string
    sql: ${TABLE}.LastPurQty ;;
  }

  dimension: last_pur_voucherno {
    type: number
    sql: ${TABLE}.LastPurVoucherno ;;
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

  dimension: price {
    type: string
    sql: ${TABLE}.Price ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: product_creationdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ProductCreationdate ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: productid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Productid ;;
  }

  dimension: pur_rate {
    type: string
    sql: ${TABLE}.PurRate ;;
  }

  dimension_group: purchase {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.PurchaseDate ;;
  }

  dimension: reorder_level {
    type: number
    sql: ${TABLE}.ReorderLevel ;;
  }

  dimension: reorder_qty {
    type: number
    sql: ${TABLE}.ReorderQty ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.SubCategory ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.Supplier ;;
  }

  dimension: suppliercity {
    type: string
    sql: ${TABLE}.suppliercity ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, company_name]
  }
}
