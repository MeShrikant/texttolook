connection: "your_database_connection"

include: "customers_master.view.lkml"

explore: customers_master {
  label: "Customer Analytics"
  description: "Explore customer data including segments, account open dates, and KYC status."

  join: customers_master {
    type: left_outer
    sql_on: ${customers_master.customer_id} = ${customers_master.customer_id} ;;
    relationship: one_to_many
  }
}