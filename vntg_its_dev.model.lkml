connection: "its_dev"

# SQL Table 사용 시
# EGENE54_SEAH.[Table Name]
# 형식처럼 Table Name앞에 [EGENE54_SEAH.]을 붙여야합니다.

include: "*.view"

datagroup: vntg_its_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vntg_its_dev_default_datagroup

explore: test_seo {
  conditionally_filter: {
    filters: {
      field: "emp_id"
      value: "looker"
    }

    unless: [emp_id, emp_no]
  }
}
