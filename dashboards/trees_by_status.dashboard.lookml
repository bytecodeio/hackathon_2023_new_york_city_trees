---
- dashboard: trees_by_status
  title: Trees by Status
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: GovE7z9eqSrTxCsDUcsruz
  elements:
  - title: 2005 Status
    name: 2005 Status
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2005
    type: looker_bar
    fields: [new_york_tree_census_2005.count, new_york_tree_census_2005.status_health]
    filters:
      new_york_tree_census_2005.status_health: "-NULL"
    sorts: [new_york_tree_census_2005.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Pct of Trees
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: pct_of_trees
      args:
      - new_york_tree_census_2005.count
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [new_york_tree_census_2005.count]
    listen: {}
    row: 10
    col: 8
    width: 8
    height: 6
  - title: 1995 Status
    name: 1995 Status
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_1995
    type: looker_bar
    fields: [new_york_tree_census_1995.count, new_york_tree_census_1995.status_health]
    sorts: [new_york_tree_census_1995.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Pct of Trees
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: pct_of_trees
      args:
      - new_york_tree_census_1995.count
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [new_york_tree_census_1995.count]
    listen: {}
    row: 10
    col: 0
    width: 8
    height: 6
  - title: '2015'
    name: '2015'
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2015
    type: single_value
    fields: [new_york_tree_census_2015.count]
    filters:
      new_york_tree_census_2015.status_health: "-Unknown"
    sorts: [new_york_tree_census_2015.count desc 0]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 3
  - title: 1995 Types
    name: 1995 Types
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_1995
    type: looker_bar
    fields: [new_york_tree_census_1995.count, new_york_tree_species.species_common_name]
    sorts: [new_york_tree_census_1995.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_colors:
      new_york_tree_census_1995.count: "#9174F0"
    label_color: [black]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 16
    col: 0
    width: 8
    height: 12
  - title: 2005 Types
    name: 2005 Types
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2005
    type: looker_bar
    fields: [new_york_tree_census_2005.count, new_york_tree_species.species_common_name]
    sorts: [new_york_tree_census_2005.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_colors:
      new_york_tree_census_2005.count: "#9174F0"
    label_color: [black]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 16
    col: 8
    width: 8
    height: 12
  - title: 2015 Types
    name: 2015 Types
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2015
    type: looker_bar
    fields: [new_york_tree_census_2015.count, new_york_tree_species.species_common_name]
    sorts: [new_york_tree_census_2015.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_colors:
      new_york_tree_census_2015.count: "#9174F0"
    label_color: [black]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 16
    col: 16
    width: 8
    height: 12
  - title: Trees by Address 2015
    name: Trees by Address 2015
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2015
    type: looker_google_map
    fields: [new_york_tree_census_2015.address, new_york_tree_census_2015.zip_city,
      new_york_tree_census_2015.zipcode, new_york_tree_census_2015.count, new_york_tree_census_2015.health]
    pivots: [new_york_tree_census_2015.health]
    filters: {}
    sorts: [new_york_tree_census_2015.health, new_york_tree_census_2015.address desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Health: new_york_tree_census_2015.health
      Species Common Name: new_york_tree_species.species_common_name
    row: 28
    col: 0
    width: 24
    height: 10
  - title: '1995'
    name: '1995'
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_1995
    type: single_value
    fields: [new_york_tree_census_1995.count]
    sorts: [new_york_tree_census_1995.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Pct of Trees
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: pct_of_trees
      args:
      - new_york_tree_census_1995.count
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields:
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 3
  - title: '2005'
    name: '2005'
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2005
    type: single_value
    fields: [new_york_tree_census_2005.count]
    filters:
      new_york_tree_census_2005.status_health: "-NULL"
    sorts: [new_york_tree_census_2005.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Pct of Trees
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: pct_of_trees
      args:
      - new_york_tree_census_2005.count
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields:
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 3
  - title: 2015 status
    name: 2015 status
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2015
    type: looker_bar
    fields: [new_york_tree_census_2015.count, new_york_tree_census_2015.status_health]
    sorts: [new_york_tree_census_2015.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Pct of Trees
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: pct_of_trees
      args:
      - new_york_tree_census_2015.count
      _kind_hint: measure
      _type_hint: number
      is_disabled: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields: [new_york_tree_census_2015.count]
    hidden_pivots: {}
    listen: {}
    row: 10
    col: 16
    width: 8
    height: 6
  - title: Trend
    name: Trend
    model: hackathon_2023_nyc_trees
    explore: ny_status_union
    type: looker_line
    fields: [ny_status_union.census_year, ny_status_union.status, ny_status_union.total_count]
    pivots: [ny_status_union.status]
    filters:
      ny_status_union.status: "-Unknown"
    sorts: [ny_status_union.status, ny_status_union.census_year]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 3
    col: 0
    width: 24
    height: 7
  filters:
  - name: Health
    title: Health
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2015
    listens_to_filters: []
    field: new_york_tree_census_2015.health
  - name: Species Common Name
    title: Species Common Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: hackathon_2023_nyc_trees
    explore: new_york_tree_census_2015
    listens_to_filters: []
    field: new_york_tree_species.species_common_name
