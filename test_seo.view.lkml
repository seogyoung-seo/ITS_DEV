view: test_seo {
  # You can specify the table name if it's different from the view name:
  sql_table_name: EGENE54_SEAH.EBD_BBS ;;

  # Define your dimensions and measures here, like this:
  dimension: ebs_id {
    description: "Unique ID for each user that has ordered"
    primary_key: yes
    type: string
    sql: ${TABLE}.EBS_ID ;;
  }

  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }

  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }

  # measure: count {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: count
  #   sql: ${ebs_id} ;;
  # }
}
