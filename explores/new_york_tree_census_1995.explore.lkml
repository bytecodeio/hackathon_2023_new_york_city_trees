include: "/views/new_york_tree_census_1995.view.lkml"
include: "/views/new_york_tree_species.view.lkml"


explore: new_york_tree_census_1995 {
  join: new_york_tree_species {
    type: inner
    sql_on: LOWER(${new_york_tree_census_1995.spc_common}) = LOWER(${new_york_tree_species.species_common_name}) OR LOWER(${new_york_tree_census_1995.spc_latin}) = LOWER(${new_york_tree_species.species_scientific_name}) ;;
    relationship: many_to_one
  }
}
