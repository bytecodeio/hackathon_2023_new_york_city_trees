# The name of this view in Looker is "New York Tree Species"
view: new_york_tree_species {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `hackathon-nyctrees-project.google_drive.new_york_tree_species` ;;

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

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: environmental_tolerances {
    type: string
    sql: ${TABLE}.environmental_tolerances ;;
  }

  dimension: fall_color {
    type: string
    sql: ${TABLE}.fall_color ;;
  }

  dimension: form {
    type: string
    sql: ${TABLE}.form ;;
  }

  dimension: growth_rate {
    type: string
    sql: ${TABLE}.growth_rate ;;
  }

  dimension: location_tolerances {
    type: string
    sql: ${TABLE}.location_tolerances ;;
  }

  dimension: notes_suggested_cultivars {
    type: string
    sql: ${TABLE}.notes_suggested_cultivars ;;
  }

  dimension: species_common_name {
    type: string
    sql: ${TABLE}.species_common_name ;;
  }

  dimension: species_scientific_name {
    type: string
    primary_key: yes
    sql: ${TABLE}.species_scientific_name ;;
  }

  dimension: tree_size {
    type: string
    sql: ${TABLE}.tree_size ;;
  }
  measure: count {
    type: count
    drill_fields: [species_common_name, species_scientific_name]
  }
}
