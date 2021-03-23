view: sql_runner_query {
  derived_table: {
    sql: SELECT A.srm_id
           , COUNT(DISTINCT A.srm_id) AS srm_count
           , SUM(CASE WHEN A.srm_clo_dttm is NULL THEN 1
                    ELSE 0
                END) AS untreated_count
        FROM EGENE54_SEAH.eso_srm A
        LEFT OUTER JOIN EGENE54_SEAH.eso_chm B ON A.srm_id = B.chm_src_id
        WHERE ROWNUM <= 10
       GROUP BY A.srm_id
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: srm_id {
    type: string
    sql: ${TABLE}.SRM_ID ;;
  }

  dimension: srm_count {
    type: number
    sql: ${TABLE}.SRM_COUNT ;;
  }

  dimension: untreated_count {
    type: number
    sql: ${TABLE}.UNTREATED_COUNT ;;
  }

  set: detail {
    fields: [srm_id, srm_count, untreated_count]
  }
}
