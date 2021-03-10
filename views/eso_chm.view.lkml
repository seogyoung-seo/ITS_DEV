view: eso_chm {
  # You can specify the table name if it's different from the view name:
  label: "변경관리"
  sql_table_name: EGENE54_SEAH.ESO_CHM ;;

  # Define your dimensions and measures here, like this:
  dimension:chm_id {
    label: "접수번호"
    description: "Unique ID for each user that has ordered"
    primary_key: yes
    type: string
    sql: ${TABLE}.chm_id ;;
  }

  dimension:chm_src_id {
    label: "서비스접수번호"
    type: string
    sql: ${TABLE}.chm_src_id ;;
  }

  dimension_group: chm_acp_dttm {
    label: "접수일자"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_acp_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }
}
