include: "/views/new_york_tree_census_2005.view.lkml"
include: "/views/new_york_tree_species.view.lkml"

explore: new_york_tree_census_2005 {
  join: new_york_tree_species {
    relationship: many_to_one
    type: left_outer
    sql_on: LOWER(${new_york_tree_census_2005.spc_common}) = LOWER(${new_york_tree_species.species_common_name})
    OR LOWER(${new_york_tree_census_2005.spc_latin}) = LOWER(${new_york_tree_species.species_scientific_name})
    ;;
  }


}
