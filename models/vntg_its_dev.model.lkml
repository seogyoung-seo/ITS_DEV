connection: "its_dev"

datagroup: vntg_its_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vntg_its_dev_default_datagroup
