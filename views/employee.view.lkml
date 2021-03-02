view: employee {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: EGENE54_SEAH.ECF_EMPLOYEE ;;

  # Define your dimensions and measures here, like this:
  dimension:emp_id {
    label: "ID"
    description: "Unique ID for each user that has ordered"
    primary_key: yes
    type: string
    sql: ${TABLE}.emp_id ;;
  }

  dimension:emp_name {
    label: "이름"
    type: string
    sql: ${TABLE}.emp_name ;;
  }

  dimension:emp_dpt_id {
    label: "부서코드"
    type: string
    sql: ${TABLE}.emp_dpt_id ;;
  }
}
