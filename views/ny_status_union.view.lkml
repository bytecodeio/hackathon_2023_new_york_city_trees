 view: ny_status_union {
    derived_table: {
      sql: select '1995' as census_year, recordid,
              case when status='Excellent' then 'Good'
                when status='Good' then 'Fair'
                when status='Fair' then 'Fair'
                when status='Critical' then 'Poor'
                else status
                end
            from ${new_york_tree_census_1995.SQL_TABLE_NAME}
            union all
           select '2005', _line, case when status='Excellent' then 'Good'
              when status='Good' then 'Fair'
              else status
              end, tree_id,
            from ${new_york_tree_census_2005.SQL_TABLE_NAME}
            union all
           select '2015',
            tree_id,
            case when status='Excellent' then 'Good'
              when status='Good' then 'Fair'
              else status
              end
            from ${new_york_tree_census_2015.SQL_TABLE_NAME};;
    }

    dimension: census_year {
      type: number
    }
    dimension: recordid {
      type: number
    }
    dimension: pk_record_id {
      type: string
      primary_key: yes
      sql: ${census_year}||${recordid} ;;
    }
    dimension: status {
      type: string
    }

    measure: total_count {
      type: count_distinct
    }
 }
