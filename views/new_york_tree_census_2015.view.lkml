# The name of this view in Looker is "New York Tree Census 2015"
view: new_york_tree_census_2015 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `hackathon-nyctrees-project.google_drive.new_york_tree_census_2015` ;;

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

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }

  dimension: boro_ct {
    type: number
    sql: ${TABLE}.boro_ct ;;
  }

  dimension: borocode {
    type: number
    sql: ${TABLE}.borocode ;;
  }

  dimension: boroname {
    type: string
    sql: ${TABLE}.boroname ;;
  }

  dimension: brch_light {
    type: string
    sql: ${TABLE}.brch_light ;;
  }

  dimension: brch_other {
    type: string
    sql: ${TABLE}.brch_other ;;
  }

  dimension: brch_shoe {
    type: string
    sql: ${TABLE}.brch_shoe ;;
  }

  dimension: cb_num {
    type: number
    sql: ${TABLE}.cb_num ;;
  }

  dimension: cncldist {
    type: number
    sql: ${TABLE}.cncldist ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: curb_loc {
    type: string
    sql: ${TABLE}.curb_loc ;;
  }

  dimension: guards {
    type: string
    sql: ${TABLE}.guards ;;
  }

  dimension: health {
    type: string
    sql: ${TABLE}.health ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: nta {
    type: string
    sql: ${TABLE}.nta ;;
  }

  dimension: nta_name {
    type: string
    sql: ${TABLE}.nta_name ;;
  }

  dimension: problems {
    type: string
    sql: ${TABLE}.problems ;;
  }

  dimension: root_grate {
    type: string
    sql: ${TABLE}.root_grate ;;
  }

  dimension: root_other {
    type: string
    sql: ${TABLE}.root_other ;;
  }

  dimension: root_stone {
    type: string
    sql: ${TABLE}.root_stone ;;
  }

  dimension: sidewalk {
    type: string
    sql: ${TABLE}.sidewalk ;;
  }

  dimension: spc_common {
    type: string
    sql: ${TABLE}.spc_common ;;
  }

  dimension: spc_latin {
    type: string
    sql: ${TABLE}.spc_latin ;;
  }

  dimension: st_assem {
    type: number
    sql: ${TABLE}.st_assem ;;
  }

  dimension: st_senate {
    type: number
    sql: ${TABLE}.st_senate ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: steward {
    type: string
    sql: ${TABLE}.steward ;;
  }

  dimension: stump_diam {
    type: number
    sql: ${TABLE}.stump_diam ;;
  }

  dimension: tree_dbh {
    type: number
    sql: ${TABLE}.tree_dbh ;;
  }

  dimension: tree_id {
    type: number
    sql: ${TABLE}.tree_id ;;
  }

  dimension: trnk_light {
    type: string
    sql: ${TABLE}.trnk_light ;;
  }

  dimension: trnk_other {
    type: string
    sql: ${TABLE}.trnk_other ;;
  }

  dimension: trunk_wire {
    type: string
    sql: ${TABLE}.trunk_wire ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  dimension: x_sp {
    type: number
    sql: ${TABLE}.x_sp ;;
  }

  dimension: y_sp {
    type: number
    sql: ${TABLE}.y_sp ;;
  }

  dimension: zip_city {
    type: string
    sql: ${TABLE}.zip_city ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }
  measure: count {
    type: count
    drill_fields: [boroname, nta_name]
  }
}