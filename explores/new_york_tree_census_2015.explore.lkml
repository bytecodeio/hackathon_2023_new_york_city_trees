include: "/views/new_york_tree_census_2015.view.lkml"
include: "/views/new_york_tree_species.view.lkml"

explore: new_york_tree_census_2015 {

  join: new_york_tree_species {
    relationship: many_to_one
    type: left_outer
    sql_on: ${new_york_tree_census_2015.spc_common} =  lower(${new_york_tree_species.species_common_name}) or
        ${new_york_tree_census_2015.spc_latin} =  lower(${new_york_tree_species.species_scientific_name})
        ;;
  }
}
