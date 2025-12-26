view: customers_master {
  sql_table_name: dbo.customers_master ;;

  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.customer_id ;;
    label: "Customer ID"
    description: "Unique identifier for each customer"
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
    label: "Customer Segment"
    description: "Segment to which the customer belongs"
  }

  dimension_group: account_open_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    sql: ${TABLE}.account_open_date ;;
    label: "Account Open Date"
    description: "Date when the customer account was opened"
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
    label: "Region"
    description: "Geographical region of the customer"
  }

  dimension: kyc_status {
    type: string
    sql: ${TABLE}.kyc_status ;;
    label: "KYC Status"
    description: "Know Your Customer status of the customer"
  }

  measure: total_customers {
    type: count
    sql: ${customer_id} ;;
    label: "Total Customers"
    description: "Total number of customers"
  }

  measure: customers_by_segment {
    type: count
    sql: ${customer_id} ;;
    group_label: "Segment Measures"
    label: "Customers by Segment"
    description: "Count of customers segmented by customer segment"
  }

  measure: average_account_open_date {
    type: average
    sql: ${account_open_date} ;;
    label: "Average Account Open Date"
    description: "Average date when accounts were opened"
  }
}