view: etw_restaurant {
  sql_table_name: Testing_BQ.ETW_Restaurant ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: business_status {
    type: string
    sql: ${TABLE}.businessStatus ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.createdBy ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.createdDate ;;
  }

  dimension: editorial_rating {
    type: number
    sql: ${TABLE}.editorialRating ;;
  }

  dimension: geo_location_lat {
    type: number
    sql: ${TABLE}.geoLocation_lat ;;
  }

  dimension: geo_location_lng {
    type: number
    sql: ${TABLE}.geoLocation_lng ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: restaurant_name_cht {
    type: string
    sql: ${TABLE}.restaurantNameCHT ;;
  }

  dimension: restaurant_name_eng {
    type: string
    sql: ${TABLE}.restaurantNameENG ;;
  }

  dimension: restaurant_serial {
    type: number
    sql: ${TABLE}.restaurantSerial ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updatedDate ;;
  }

  dimension: latitude_longitude {
    alias: [view_location]
    view_label: "Location"
    type: location
    sql_latitude: ${geo_location_lng} ;;
    sql_longitude: ${geo_location_lng} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
