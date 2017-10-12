view: t9000_superloyal {
  sql_table_name: Testing_BQ.t9000_superloyal ;;

  dimension: ntile_1 {
    type: number
    sql: ${TABLE}.ntile_1 ;;
  }

  dimension: ntile_2 {
    type: number
    sql: ${TABLE}.ntile_2 ;;
  }

  dimension: ntile_3 {
    type: number
    sql: ${TABLE}.ntile_3 ;;
  }

  dimension: ntile_4 {
    type: number
    sql: ${TABLE}.ntile_4 ;;
  }

  dimension: ntile_5 {
    type: number
    sql: ${TABLE}.ntile_5 ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.row_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
