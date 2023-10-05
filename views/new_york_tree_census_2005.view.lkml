# The name of this view in Looker is "New York Tree Census 2005"
view: new_york_tree_census_2005 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `hackathon-nyctrees-project.google_drive.new_york_tree_census_2005` ;;

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

  dimension: cb_num {
    type: number
    sql: ${TABLE}.cb_num ;;
  }

  dimension: cen_year {
    type: number
    sql: ${TABLE}.cen_year ;;
  }

  dimension: cncldist {
    type: number
    sql: ${TABLE}.cncldist ;;
  }

  dimension: horz_blck {
    type: string
    sql: ${TABLE}.horz_blck ;;
  }

  dimension: horz_grate {
    type: string
    sql: ${TABLE}.horz_grate ;;
  }

  dimension: horz_other {
    type: string
    sql: ${TABLE}.horz_other ;;
  }

  dimension: horz_plant {
    type: string
    sql: ${TABLE}.horz_plant ;;
  }

  dimension: inf_canopy {
    type: string
    sql: ${TABLE}.inf_canopy ;;
  }

  dimension: inf_guard {
    type: string
    sql: ${TABLE}.inf_guard ;;
  }

  dimension: inf_lights {
    type: string
    sql: ${TABLE}.inf_lights ;;
  }

  dimension: inf_other {
    type: string
    sql: ${TABLE}.inf_other ;;
  }

  dimension: inf_outlet {
    type: string
    sql: ${TABLE}.inf_outlet ;;
  }

  dimension: inf_paving {
    type: string
    sql: ${TABLE}.inf_paving ;;
  }

  dimension: inf_shoes {
    type: string
    sql: ${TABLE}.inf_shoes ;;
  }

  dimension: inf_wires {
    type: string
    sql: ${TABLE}.inf_wires ;;
  }

  dimension: location_1 {
    type: string
    sql: ${TABLE}.location_1 ;;
  }

  dimension: nta {
    type: string
    sql: ${TABLE}.nta ;;
  }

  dimension: nta_name {
    type: string
    sql: ${TABLE}.nta_name ;;
  }

  dimension: objectid {
    type: string
    sql: ${TABLE}.objectid ;;
  }

  dimension: objectid_1 {
    type: number
    sql: ${TABLE}.objectid_1 ;;
  }

  dimension: pit_type {
    type: string
    sql: ${TABLE}.pit_type ;;
  }

  dimension: sidw_crack {
    type: string
    sql: ${TABLE}.sidw_crack ;;
  }

  dimension: sidw_raise {
    type: string
    sql: ${TABLE}.sidw_raise ;;
  }

  dimension: soil_lvl {
    type: string
    sql: ${TABLE}.soil_lvl ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tree_dbh {
    type: number
    sql: ${TABLE}.tree_dbh ;;
  }

  dimension: tree_loc {
    type: string
    sql: ${TABLE}.tree_loc ;;
  }

  dimension: trunk_dmg {
    type: string
    sql: ${TABLE}.trunk_dmg ;;
  }

  dimension: vert_other {
    type: string
    sql: ${TABLE}.vert_other ;;
  }

  dimension: vert_pgrd {
    type: string
    sql: ${TABLE}.vert_pgrd ;;
  }

  dimension: vert_tgrd {
    type: string
    sql: ${TABLE}.vert_tgrd ;;
  }

  dimension: vert_wall {
    type: string
    sql: ${TABLE}.vert_wall ;;
  }

  dimension: wire_2_nd {
    type: string
    sql: ${TABLE}.wire_2_nd ;;
  }

  dimension: wire_htap {
    type: string
    sql: ${TABLE}.wire_htap ;;
  }

  dimension: wire_other {
    type: string
    sql: ${TABLE}.wire_other ;;
  }

  dimension: wire_prime {
    type: string
    sql: ${TABLE}.wire_prime ;;
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
