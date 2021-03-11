view: eso_srm {
  # You can specify the table name if it's different from the view name:
  label: "서비스요청관리"
  sql_table_name: EGENE54_SEAH.ESO_SRM ;;

  # Define your dimensions and measures here, like this:
  dimension:srm_id {
    label: "접수번호"
    description: "Unique ID for each user that has ordered!"
    primary_key: yes
    type: string
    sql: ${TABLE}.srm_id ;;
  }

  dimension_group: srm_acp_dttm {
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
          WHEN {% parameter emp_filter %} = '접수자' THEN EGENE54_SEAH.get_empname(${TABLE}.srm_acp_emp_id)
          WHEN {% parameter emp_filter %} = '처리자' THEN EGENE54_SEAH.get_empname(${TABLE}.srm_ass_emp_id)
        END ;;
  }

  dimension_group: srm_actstart_dttm {
    label: "실제시작일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_actstart_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension_group: srm_actfinish_dttm {
    label: "실제완료일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_actfinish_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension_group: srm_agree_dttm {
    label: "합의일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_agree_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension_group: srm_act_dttm {
    label: "처리일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_act_dttm, 'YYYY-MM-DD HH24:MI:SS') ;;
  }

  dimension: srm_ass_dpt_id {
    label: "처리자작업그룹(부서)"
    type: string
    sql: EGENE54_SEAH.get_dptname(${TABLE}.srm_ass_dpt_id) ;;
  }

  # dimension: srm_ass_emp_id {
  #   label: "처리자"
  #   type: string
  #   sql: ${TABLE}.srm_ass_emp_id ;;
  # }

  dimension: srm_ass_org_id {
    label: "처리자기관"
    type: string
    sql: EGENE54_SEAH.get_orgname(${TABLE}.srm_ass_org_id) ;;
  }

  dimension: srm_ass_wog_id {
    label: "처리자작업그룹"
    type: string
    sql: EGENE54_SEAH.get_wogname(${TABLE}.srm_ass_wog_id) ;;
  }

  dimension: srm_cat_cd {
    label: "범주"
    type: string
    sql: EGENE54_SEAH.getcode_level3name(${TABLE}.srm_cat_cd) ;;
  }

  dimension: srm_cla_cd {
    label: "상세유형"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.srm_cla_cd) ;;
  }

  dimension: srm_clo_cd {
    label: "완료코드"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.srm_clo_cd) ;;
  }

  dimension_group: srm_clo_dttm {
    label: "종료일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_clo_dttm, 'YYYY-MM-DD HH24:MI:SS');;
  }

  dimension: srm_med_cd {
    label: "접수매체"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.srm_med_cd) ;;
  }

  dimension: srm_own_org_id {
    label: "소유자기관"
    type: string
    sql: EGENE54_SEAH.get_orgname(${TABLE}.srm_own_org_id) ;;
  }

  dimension_group: srm_reg_dttm {
    label: "등록일시"
    type: time
    timeframes: [time, hour, date, week, month, year, hour_of_day, day_of_week, month_num, raw, week_of_year]
    sql: TO_DATE(${TABLE}.srm_reg_dttm, 'YYYY-MM-DD HH24:MI:SS');;
  }

  dimension: srm_req_emp_id {
    label: "요청자"
    type: string
    sql: EGENE54_SEAH.get_empname(${TABLE}.srm_req_emp_id) ;;
  }

  dimension: srm_req_org_id {
    label: "요청자기관"
    type: string
    sql: EGENE54_SEAH.get_orgname(${TABLE}.srm_req_org_id) ;;
  }

  parameter: sys_filter {
    # group_label: "Filter"
    view_label: "Filter"
    label: "업무시스템상세조회"
    allowed_value: { value: "Y" }
    allowed_value: { value: "N" }
  }

  dimension: srm_sys_id {
    label: "업무시스템"
    type: string
    sql: CASE
          WHEN {% parameter sys_filter %} = 'N' THEN EGENE54_SEAH.getlevel2_sysname(${TABLE}.srm_sys_id)
          WHEN {% parameter sys_filter %} = 'Y' THEN EGENE54_SEAH.getlevel4_sysname(${TABLE}.srm_sys_id)
        END;;
  }

  dimension: srm_acp_cat_cd {
    label: "요청분류(접수)"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.srm_acp_cat_cd) ;;
  }

  dimension: srm_src_id {
    label: "연관ID"
    type: string
    hidden: yes
    sql: ${TABLE}.srm_src_id ;;
  }

  dimension: srm_sys_cd {
    label: "업무분류"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.srm_sys_cd) ;;
  }

  dimension: srm_typ_cd{
    label: "SR요청구분"
    type: string
    sql: EGENE54_SEAH.get_codename(${TABLE}.srm_typ_cd) ;;
  }

  dimension: srm_proxy_yn{
    label: "대행여부"
    type: yesno
    sql: ${TABLE}.srm_proxy_yn IS NOT NULL ;;
  }

  measure: srm_count {
    # description: "Use this for counting lifetime orders across many users"
    label: "건 수"
    type: count
    drill_fields: [detail*]
  }

  measure: untreated_count {
    # description: "Use this for counting lifetime orders across many users"
    label: "미처리건 수"
    type: sum
    sql: CASE WHEN ${TABLE}.srm_clo_dttm is NULL THEN 1
              ELSE 0
          END ;;
  }

  measure: over_date{
    # description: "Use this for counting lifetime orders across many users"
    label: "기한초과건 수"
    type: sum
    sql: CASE WHEN TO_DATE(SUBSTR(${TABLE}.srm_actfinish_dttm, 1, 8), 'YYYY-MM-DD') - TO_DATE(SUBSTR(${TABLE}.srm_agree_dttm, 1, 8), 'YYYY-MM-DD') > 0 THEN 1
              ELSE 0
          END;;
  }

  set: detail {
    fields: [srm_id, emp_id, srm_ass_dpt_id, srm_ass_org_id, srm_ass_wog_id, srm_cat_cd, srm_cla_cd, srm_clo_cd, srm_med_cd, srm_own_org_id, srm_req_emp_id, srm_req_org_id, srm_sys_id, srm_acp_cat_cd, srm_src_id, srm_sys_cd, srm_typ_cd, srm_proxy_yn]
  }
}
