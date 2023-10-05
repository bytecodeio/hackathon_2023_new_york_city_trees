# The name of this view in Looker is "New York Tree Census 1995"
view: new_york_tree_census_1995 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `hackathon-nyctrees-project.google_drive.new_york_tree_census_1995` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}._fivetran_synced ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Line" in Explore.

  dimension: _line {
    type: number
    sql: ${TABLE}._line ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__line {
    type: sum
    sql: ${_line} ;;  }
  measure: average__line {
    type: average
    sql: ${_line} ;;  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: borough {
    type: string
    sql: ${TABLE}.borough ;;
  }

  dimension: cb_new {
    type: number
    sql: ${TABLE}.cb_new ;;
  }

  dimension: cb_original {
    type: number
    sql: ${TABLE}.cb_original ;;
  }

  dimension: censusblock_2010 {
    type: string
    sql: ${TABLE}.censusblock_2010 ;;
  }

  dimension: censustract_2010 {
    type: string
    sql: ${TABLE}.censustract_2010 ;;
  }

  dimension: diameter {
    type: number
    sql: ${TABLE}.diameter ;;
  }

  dimension: house_number {
    type: string
    sql: ${TABLE}.house_number ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: nta_2010 {
    type: string
    sql: ${TABLE}.nta_2010 ;;
  }

  dimension: recordid {
    type: number
    value_format_name: id
    sql: ${TABLE}.recordid ;;
  }

  dimension: segmentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.segmentid ;;
  }

  dimension: sidewalk_condition {
    type: string
    sql: ${TABLE}.sidewalk_condition ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: spc_common {
    type: string
    sql: ${TABLE}.spc_common ;;
  }

  dimension: spc_latin {
    type: string
    sql: ${TABLE}.spc_latin ;;
  }

  dimension: species {
    type: string
    sql: ${TABLE}.species ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: support_structure {
    type: string
    sql: ${TABLE}.support_structure ;;
  }

  dimension: wires {
    type: string
    sql: ${TABLE}.wires ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }

  dimension: zip_new {
    type: number
    sql: ${TABLE}.zip_new ;;
  }

  dimension: zip_original {
    type: number
    sql: ${TABLE}.zip_original ;;
  }
  measure: count {
    type: count
  }
}
