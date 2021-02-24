connection: "its_dev"

include: "*.view"

datagroup: vntg_its_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vntg_its_dev_default_datagroup

explore: test_seo {}
