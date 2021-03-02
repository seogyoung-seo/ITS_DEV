view: eso_srm {
  # You can specify the table name if it's different from the view name:
  label: "서비스요청관리"
  sql_table_name: EGENE54_SEAH.ESO_SRM ;;

  # Define your dimensions and measures here, like this:
  dimension:srm_id {
    label: "접수번호"
    description: "Unique ID for each user that has ordered"
    primary_key: yes
    type: string
    sql: ${TABLE}.srm_id ;;
  }

  dimension: srm_acp_dttm {
    label: "접수일시"
    type: string
    sql: TO_DATE(${TABLE}.srm_acp_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  parameter: emp_filter {
    # group_label: "Filter"
    view_label: "Filter"
    label: "담당자구분"
    allowed_value: { value: "접수자" }
    allowed_value: { value: "처리자" }
  }

  dimension: emp_id {
    label: "담당자"
    type: string
    sql: CASE
          WHEN {% parameter emp_filter %} = '접수자' THEN ${TABLE}.srm_acp_emp_id
          WHEN {% parameter emp_filter %} = '처리자' THEN ${TABLE}.srm_act_emp_id
        END ;;
  }

  dimension: srm_actstart_dttm {
    label: "실제시작일시"
    type: string
    sql: TO_DATE(${TABLE}.srm_actstart_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension: srm_actfinish_dttm {
    label: "실제완료일시"
    type: string
    sql: TO_DATE(${TABLE}.srm_actfinish_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension: srm_act_dttm {
    label: "처리일시"
    type: string
    sql: TO_DATE(${TABLE}.srm_act_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  # dimension: srm_act_emp_id {
  #   label: "처리자"
  #   type: string
  #   sql: ${TABLE}.srm_act_emp_id ;;
  # }
  # measure: count {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: count
  #   sql: ${ebs_id} ;;
  # }
}
