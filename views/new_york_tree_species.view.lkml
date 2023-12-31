view: new_york_tree_species {

  sql_table_name: `hackathon-nyctrees-project.google_drive.new_york_tree_species` ;;


  dimension_group: fivetran_synced {
    type: time
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: line {
    type: number
    sql: ${TABLE}._line ;;
  }

  measure: total__line {
    type: sum
    sql: ${line} ;;  }

  measure: average__line {
    type: average
    sql: ${line} ;;  }

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
