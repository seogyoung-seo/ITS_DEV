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
    label: "접수일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_acp_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  parameter: emp_filter {
    # group_label: "Filter"
    view_label: "Filter"
    label: "(서비스요청)담당자구분"
    allowed_value: { value: "접수자" }
    allowed_value: { value: "처리자" }
  }

  dimension: emp_id {
    label: "담당자"
    type: string
    sql: CASE
          WHEN {% parameter emp_filter %} = '접수자' THEN EGENE54_SEAH.get_empname(${TABLE}.chm_acp_emp_id)
          WHEN {% parameter emp_filter %} = '처리자' THEN EGENE54_SEAH.get_empname(${TABLE}.chm_ass_emp_id)
        END ;;
  }

  # dimension: chm_acp_emp_id {
  #   label: "접수자"
  #   type: string
  #   sql: EGENE54_SEAH.get_empname(${TABLE}.chm_acp_emp_id) ;;
  # }

  dimension: chm_actfinish_dttm {
    label: "실제완료일시"
    type: string
    sql: TO_DATE(${TABLE}.chm_actfinish_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension_group: chm_actstart_dttm {
    label: "실제시작일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.chm_actstart_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension_group: chm_act_dttm {
    label: "처리일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.chm_act_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension_group: chm_agree_dttm {
    label: "합의일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.chm_agree_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  # dimension: chm_ass_emp_id {
  #   label: "처리자"
  #   type: string
  #   sql: EGENE54_SEAH.get_empname(${TABLE}.chm_ass_emp_id) ;;
  # }

  dimension: chm_ass_org_id {
    label: "처리자기관"
    type: string
    sql: EGENE54_SEAH.get_orgname(${TABLE}.chm_ass_org_id) ;;
  }

  dimension: chm_ass_wog_id {
    label: "처리자작업그룹"
    type: string
    sql: EGENE54_SEAH.get_wogname(${TABLE}.chm_ass_wog_id) ;;
  }

  dimension: chm_cat_cd {
    label: "변경유형"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.chm_cat_cd) ;;
  }

  dimension: chm_cit_id {
    label: "구성항목"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.chm_cit_id) ;;
  }

  dimension: chm_cla_cd {
    label: "상세유형"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.chm_cla_cd) ;;
  }

  dimension: chm_clo_cd {
    label: "완료코드"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.chm_clo_cd) ;;
  }

  dimension_group: chm_clo_dttm {
    label: "종료일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.chm_clo_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension_group: chm_dead_dttm {
    label: "희망완료일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.chm_dead_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension: chm_med_cd {
    label: "접수매체"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.chm_med_cd) ;;
  }

  dimension_group: chm_reg_dttm {
    label: "등록일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.chm_reg_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension: chm_reg_emp_id {
    label: "등록자"
    type: string
    sql: EGENE54_SEAH.get_empname(${TABLE}.chm_reg_emp_id) ;;
  }

  dimension: chm_reg_org_id {
    label: "등록자기관"
    type: string
    sql: EGENE54_SEAH.get_orgname(${TABLE}.chm_reg_org_id) ;;
  }

  dimension_group: chm_req_dttm {
    label: "요청일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.chm_req_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension: chm_req_emp_id {
    label: "요청자"
    type: string
    sql: EGENE54_SEAH.get_empname(${TABLE}.chm_req_emp_id) ;;
  }

  dimension: chm_req_org_id {
    label: "요청회사"
    type: string
    sql: EGENE54_SEAH.get_orgname(${TABLE}.chm_req_org_id) ;;
  }

  dimension: chm_svc_id {
    label: "서비스"
    type: string
    sql: ${TABLE}.chm_svc_id ;;
  }

  dimension: chm_sys_id {
    label: "업무시스템"
    type: string
    sql: EGENE54_SEAH.getlevel2_sysname(${TABLE}.chm_sys_id) ;;
  }

  dimension: chm_tas_id {
    label: "단계"
    type: string
    sql: EGENE54_SEAH.get_tasname(${TABLE}.chm_tas_id) ;;
  }

  dimension: chm_act_dpt_id {
    label: "처리자부서"
    type: string
    sql: ${TABLE}.chm_act_dpt_id ;;
  }

  dimension: chm_sys_cd {
    label: "대상서버(시스템)"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.chm_sys_cd) ;;
  }

  dimension: chm_act_mh {
    label: "처리공수"
    type: number
    sql: ${TABLE}.chm_act_mh ;;
  }

  dimension: chm_srm_cat_cd {
    label: "요청분류"
    type: string
    sql: ${TABLE}.chm_srm_cat_cd ;;
  }

  dimension: chm_rjt_yn {
    label: "반려여부"
    type: string
    sql: ${TABLE}.chm_rjt_yn ;;
  }

  dimension: chm_uat_yn {
    label: "현업테스트여부"
    type: string
    sql: ${TABLE}.chm_uat_yn ;;
  }

  dimension: chm_dev_cd {
    label: "개발구분"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.chm_dev_cd) ;;
  }

  dimension: chm_ass_we_id {
    label: "작업그룹또는담당자"
    type: string
    sql: ${TABLE}.chm_ass_we_id ;;
  }
  measure: chm_count {
    # description: "Use this for counting lifetime orders across many users"
    label: "건 수"
    type: count
    drill_fields: [srm_rel_detail*]
  }

  set: srm_rel_detail {
    fields: [chm_id, chm_actfinish_dttm, chm_ass_org_id, chm_ass_wog_id, chm_cat_cd, chm_cit_id, chm_cla_cd, chm_clo_cd, chm_req_org_id, chm_act_mh]
  }
}
