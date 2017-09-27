view: machinelearning_loyalusers {
  sql_table_name: Testing_BQ.machinelearning_loyalusers ;;

  dimension: c8002_adid {
    type: string
    sql: ${TABLE}.c8002_adid ;;
  }

  dimension: coordinate_4 {
    type: number
    sql: ${TABLE}.coordinate_4 ;;
  }

  dimension: ntile_4 {
    type: number
    sql: ${TABLE}.ntile_4 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
