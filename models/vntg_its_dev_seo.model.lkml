connection: "its_dev"

label: "2)ITS Dev List[Seo]"
# SQL Table 사용 시
# EGENE54_SEAH.[Table Name]
# 형식처럼 Table Name앞에 [EGENE54_SEAH.]을 붙여야합니다.

include: "/views/*.view"

datagroup: vntg_its_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vntg_its_dev_default_datagroup

explore: eso_srm {
  label: "서비스요청관리"

  always_filter: {
    filters: {
      field: emp_filter
      value: "접수자"
    }

    filters: {
      field: sys_filter
      value: "N"
    }
  }
  join: employee {
    relationship: one_to_one
    sql_on: ${employee.emp_id} = ${eso_srm.emp_id} ;;
  }

}
