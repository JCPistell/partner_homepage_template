- dashboard: business_pulse
  title: Business Pulse
  layout: newspaper
  description: ''

  elements:
  - name: Number of First Purchasers
    title: Number of First Purchasers
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.first_purchase_count
    sorts:
    - order_items.first_purchase_count desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: goal
      label: Goal
      expression: '10000'
      value_format:
      value_format_name: decimal_0
    query_timezone: America/Los_Angeles
    font_size: medium
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    text_color: black
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: New Users Acquired
    custom_color_enabled: false
    custom_color: forestgreen
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 0
    col: 0
    width: 6
    height: 4
  - name: Average Order Sale Price
    title: Average Order Sale Price
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.average_sale_price
    sorts:
    - orders.average_profit desc
    - order_items.average_sale_price desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: date
      label: date
      expression: now()
      value_format:
      value_format_name:
      _kind_hint: dimension
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    font_size: medium
    text_color: black
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    series_types: {}
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 6
    width: 6
    height: 4
  - name: Orders by Day and Category
    title: Orders by Day and Category
    model: powered_by
    explore: order_items
    type: looker_area
    fields:
    - products.category
    - order_items.count
    - order_items.created_date
    pivots:
    - products.category
    fill_fields:
    - order_items.created_date
    filters:
      products.category: Blazers & Jackets,Sweaters,Pants,Shorts,Fashion Hoodies &
        Sweatshirts,Accessories
    sorts:
    - products.category
    - order_items.created_date desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    y_axis_labels:
    - "# Order Items"
    stacking: normal
    x_axis_datetime: true
    hide_points: true
    hide_legend: false
    x_axis_datetime_tick_count: 4
    show_x_axis_label: false
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    point_style: none
    interpolation: linear
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 37
    col: 0
    width: 24
    height: 9
  - name: Website Visit Volume vs Conversion Rate
    title: Website Visit Volume vs. Conversion Rate
    model: powered_by
    explore: events
    type: looker_column
    fields:
    - events.event_day_of_week
    - events.sessions_count
    - events.unique_visitors
    - sessions.overall_conversion
    sorts:
    - events.event_day_of_week
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors:
    - "#1EA8DF"
    - "#8ED3EF"
    - "#B1A8C4"
    - "#635189"
    y_axis_orientation:
    - left
    - right
    label_color:
    - "#EA8A2F"
    - "#e9b404"
    ordering: none
    show_null_labels: false
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    series_types:
      events.count: line
      events.unique_visitors: line
      events.sessions_count: line
    series_labels:
      sessions.overall_conversion: Conversion Rate
      events.sessions_count: Total Visitors
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: events.unique_visitors
        name: Unique Visitors
      - id: events.sessions_count
        name: Sessions Count
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sessions.overall_conversion
        name: Conversion Rate
    listen:
      Date: events.event_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 28
    col: 0
    width: 12
    height: 9
  - name: Percent of Cohort Still Active by Traffic Source
    title: Percent of Cohort Still Active by Traffic Source
    model: powered_by
    explore: order_items
    type: looker_line
    fields:
    - order_items.months_since_signup
    - users.count
    - users.traffic_source
    pivots:
    - users.traffic_source
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts:
    - order_items.months_since_signup
    - users.age_tier__sort_
    - users.traffic_source
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: pct_cohort_still_active
      label: Pct Cohort Still Active
      expression: 100.0 * ${users.count} / max(${users.count})
      value_format: "#.#\\%"
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: false
    point_style: none
    interpolation: linear
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    hidden_fields:
    - cumulative_lifetime_spend
    - order_items.total_sale_price
    - users.count
    y_axis_labels:
    - Percent of Cohort still Active
    y_axis_max:
    - '50'
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    series_colors: {}
    y_axis_value_format: "#\\%"
    listen:
      Country: users.country
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 20
    col: 12
    width: 12
    height: 8
  - name: Total Spend by Cohort
    title: Total Spend by Cohort
    model: powered_by
    explore: order_items
    type: looker_line
    fields:
    - order_items.months_since_signup
    - users.created_month
    - order_items.total_sale_price
    pivots:
    - users.created_month
    filters:
      order_items.created_month: 12 months ago for 12 months
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts:
    - order_items.months_since_signup
    - users.created_month desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_sale_price
      label: Total Sale Price
      expression: |-
        if(
        is_null(${order_items.total_sale_price})
        ,null
        ,running_total(${order_items.total_sale_price}))
      value_format: "$#,###"
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: false
    point_style: none
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    hidden_fields:
    - cumulative_lifetime_spend
    - order_items.total_sale_price
    y_axis_value_format: "$#,##0"
    interpolation: linear
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    listen:
      Country: users.country
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 13
    col: 12
    width: 12
    height: 7
  - name: Total Sales, Year over Year
    title: Total Sales, Year over Year
    model: powered_by
    explore: order_items
    type: looker_line
    fields:
    - order_items.created_year
    - order_items.created_month_num
    - order_items.total_sale_price
    pivots:
    - order_items.created_year
    filters:
      order_items.created_date: before 0 months ago
      order_items.created_year: 5 years
    sorts:
    - order_items.created_year desc
    - order_items.created_month_num
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: right
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - calculation_1
    x_axis_label: Month of Year
    colors:
    - "#635189"
    - "#B1A8C4"
    - "#1EA8DF"
    - "#8ED3EF"
    y_axis_value_format: "$#,##0"
    series_types: {}
    listen:
      Country: users.country
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 4
    col: 0
    width: 12
    height: 9
  - name: Highest Spending Users
    title: Highest Spending Users
    model: powered_by
    explore: order_items
    type: looker_map
    fields:
    - users.approx_location
    - users.gender
    - order_items.order_count
    - users.count
    - order_items.total_sale_price
    - order_items.average_spend_per_user
    - users.country
    pivots:
    - users.gender
    # filters:
    #   users.country: USA
    sorts:
    - users.gender 0
    - order_items.total_sale_price desc 0
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    hidden_fields:
    - orders.count
    - users.count
    - order_items.total_sale_price
    - order_items.order_count
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    map: usa
    map_projection: ''
    quantize_colors: false
    colors:
    - whitesmoke
    - "#64518A"
    outer_border_color: "#64518A"
    inner_border_color: ''
    inner_border_width: 0.6
    outer_border_width: 2
    empty_color: ''
    map_pannable: true
    map_zoomable: true
    map_latitude: 38.20365531807149
    map_longitude: -99.931640625
    map_zoom: 3
    map_value_scale_clamp_max: 200
    map_value_scale_clamp_min: 0
    map_value_colors:
    - white
    - purple
    map_marker_radius_max: 15
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_marker_color:
    - "#64518A"
    - "#1ea8df"
    - "#a2dcf3#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    heatmap_gridlines_empty: false
    reverse_map_value_colors: false
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: hover
    note_text: Bubble size corresponds to average user spend
    row: 4
    col: 12
    width: 12
    height: 9
  - name: User Behaviors by Traffic Source
    title: User Behaviors by Traffic Source
    model: powered_by
    explore: order_items
    type: looker_column
    fields:
    - users.traffic_source
    - order_items.average_sale_price
    - user_order_facts.average_lifetime_orders

    sorts:
    - user_order_facts.lifetime_orders_tier__sort_
    - users.traffic_source
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hidden_fields:
    - percent_repeat_customers
    value_labels: legend
    label_type: labPer
    font_size: '13'
    colors:
    - "#1ea8df"
    - "#a2dcf3"
    - "#929292"
    - "#9fdee0"
    - "#1f3e5a"
    - "#90c8ae"
    - "#92818d"
    - "#c5c6a6"
    - "#82c2ca"
    - "#cee0a0"
    - "#928fb4"
    - "#9fc190"
    hide_legend: false
    y_axis_orientation:
    - left
    - right
    y_axis_value_format: '0'
    y_axis_labels:
    - Average Sale Price ($)
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: order_items.created_date
      Country: users.country
    row: 13
    col: 0
    width: 12
    height: 7
  - name: User Basic Demographic Profile
    title: User Basic Demographic Profile
    model: powered_by
    explore: order_items
    type: looker_donut_multiples
    fields:
    - users.gender
    - users.traffic_source
    - order_items.count
    pivots:
    - users.traffic_source
    filters:
      users.gender: "-NULL"
    sorts:
    - user_order_facts.lifetime_orders_tier__sort_
    - users.traffic_source
    - order_items.count desc 0
    limit: 500
    column_limit: 15
    query_timezone: America/Los_Angeles
    show_value_labels: true
    show_view_names: true
    font_size: 15
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hide_legend: false
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    series_colors: {}
    listen:
      Date: order_items.created_date
      Country: users.country
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 20
    col: 0
    width: 12
    height: 8
  - name: Most Viewed Brands Online
    title: Most Viewed Brands Online
    model: powered_by
    explore: sessions
    type: table
    fields:
    - product_viewed.brand
    - sessions.count
    - sessions.cart_to_checkout_conversion
    filters:

      product_viewed.brand: "-NULL"
    sorts:
    - sessions.count desc
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    truncate_column_names: false
    table_theme: gray
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    limit_displayed_rows: false
    hide_totals: false
    hide_row_totals: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Date: events.event_date
      Country: users.country
      State: users.state
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 28
    col: 12
    width: 12
    height: 9
  - name: 30 Day Repeat Purchase Rate
    title: 30 Day Repeat Purchase Rate
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.30_day_repeat_purchase_rate

    sorts:
    - repeat_purchase_facts.30_day_repeat_purchase_rate desc
    - order_items.30_day_repeat_purchase_rate desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    colors:
    - "#1f78b4"
    - "#a6cee3"
    - "#33a02c"
    - "#b2df8a"
    - "#e31a1c"
    - "#fb9a99"
    - "#ff7f00"
    - "#fdbf6f"
    - "#6a3d9a"
    - "#cab2d6"
    - "#b15928"
    - "#edbc0e"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Repeat Purchase Rate
    custom_color_enabled: false
    custom_color: forestgreen
    listen:
      Date: order_items.created_date
      Country: users.country
    note_state: collapsed
    note_display: hover
    note_text: What percent of orders are followed by a repeat purchase by the same
      user within 30 days?
    row: 0
    col: 12
    width: 6
    height: 4
  - name: Total Order Count
    title: Total Order Count
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.reporting_period
    - order_items.count
    filters:
      order_items.reporting_period: "-NULL"
    sorts:
    - order_items.count desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: Percent Change
      expression: "${order_items.count}/offset(${order_items.count},1) - 1"
      value_format:
      value_format_name: percent_0
    query_timezone: America/Los_Angeles
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_single_value_title: true
    single_value_title: Orders This Year
    hidden_fields:
    - order_items.reporting_period
    comparison_label: vs Same Period Last Year
    custom_color_enabled: false
    custom_color: forestgreen
    listen:
      Country: users.country
      State: users.state
      City: users.city
    row: 0
    col: 18
    width: 6
    height: 4
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    model: powered_by
    explore: order_items
    field: users.state
    listens_to_filters:
    - Country
    allow_multiple_values: true
    required: false
  - name: City
    title: City
    type: field_filter
    default_value: ''
    model: powered_by
    explore: order_items
    field: users.city
    listens_to_filters:
    - State
    - Country
    allow_multiple_values: true
    required: false
  - name: Date
    title: Date
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
  - name: Country
    title: Country
    type: field_filter
#     default_value: "USA"
    model: powered_by
    explore: order_items
    field: users.country
    listens_to_filters: []
    allow_multiple_values: true
    required: false



#############################################
##########Brand Analytics ##################
##############################################
- dashboard: brand_analytics
  title: Brand Analytics, Web & Transactional
  layout: newspaper

  elements:
  - name: Total Orders
    title: Total Orders
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.order_count
    sorts:
    - order_items.order_count desc
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
    row: 0
    col: 16
    width: 8
    height: 3
  - name: Total Customers
    title: Total Customers
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - users.count
    sorts:
    - users.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
    note_state: expanded
    note_display: above
    note_text: ''
    row: 0
    col: 0
    width: 8
    height: 3
  - name: Average Order Value
    title: Average Order Value
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.average_sale_price
    sorts:
    - order_items.average_sale_price desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
    row: 0
    col: 8
    width: 8
    height: 3
  - name: Brand Traffic by Source, OS
    title: Brand Traffic by Source, OS
    model: powered_by
    explore: events
    type: looker_donut_multiples
    fields:
    - users.traffic_source
    - events.os
    - events.count
    pivots:
    - users.traffic_source
    filters:
      users.traffic_source: "-NULL"
    sorts:
    - events.count desc 1
    - users.traffic_source
    limit: 20
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    stacking: ''
    show_value_labels: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    font_size: 12
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 3
    col: 0
    width: 11
    height: 8
  - name: Top Product Categories - Cart vs Conversion
    title: Top Product Categories - Cart vs Conversion
    model: powered_by
    explore: events
    type: looker_column
    fields:
    - product_viewed.category
    - sessions.overall_conversion
    - sessions.cart_to_checkout_conversion
    - sessions.count_cart_or_later
    filters:
      product_viewed.category: "-NULL"
    sorts:
    - sessions.count_cart_or_later desc
    limit: 8
    column_limit: 50
    query_timezone: America/Los_Angeles
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_combined: false
    y_axis_orientation:
    - right
    - left
    show_value_labels: true
    show_view_names: false
    colors:
    - "#64518A"
    - "#8D7FB9"
    stacking: ''
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label_rotation: -45
    show_x_axis_ticks: true
    x_axis_scale: auto
    series_types:
      sessions.cart_to_checkout_conversion: line
      __FILE: powered_by_event/web_analytics.dashboard.lookml
      __LINE_NUM: 632
      sessions.overall_conversion: line
    label_density: 25
    legend_position: center
    y_axis_labels:
    - Cart to Checkout Conversion Percent
    - Total Added to Cart
    show_null_labels: false
    label_rotation: 0
    ordering: none
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    hide_legend: false
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes:
    - label: Total Added to Cart
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sessions.count_cart_or_later
        name: "(4) Add to Cart or later"
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sessions.overall_conversion
        name: Overall Conversion
      - id: sessions.cart_to_checkout_conversion
        name: Cart to Checkout Conversion
    series_labels:
      sessions.cart_to_checkout_conversion: Cart to Checkout Conversion
      sessions.overall_conversion: Overall Conversion
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
    row: 19
    col: 0
    width: 12
    height: 8
  - name: Top Visitors and Transaction History
    title: Top Visitors and Transaction History
    model: powered_by
    explore: events
    type: table
    fields:
    - users.name
    - users.history
    - users.state
    - users.traffic_source
    - sessions.count
    filters:
      users.name: "-NULL"
    sorts:
    - sessions.count desc
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
    row: 37
    col: 0
    width: 12
    height: 10
  - name: Sales and Sale Price Trend
    title: Sales and Sale Price Trend
    model: powered_by
    explore: order_items
    type: looker_line
    fields:
    - order_items.created_date
    - order_items.total_sale_price
    - order_items.average_sale_price
    sorts:
    - order_items.total_sale_price desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    x_axis_datetime: true
    y_axis_orientation:
    - left
    - right
    y_axis_combined: false
    y_axis_labels:
    - Total Sale Amount
    - Average Selling Price
    hide_points: true
    hide_legend: true
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    point_style: none
    interpolation: linear
    colors:
    - "#F2B431"
    - "#57BEBE"
    x_axis_label: Order Date
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    color_palette: Custom
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
    note_state: collapsed
    note_display: hover
    note_text: ''
    row: 27
    col: 12
    width: 12
    height: 10
  - name: Sales by Department and Category
    title: Sales by Department and Category
    model: powered_by
    explore: order_items
    type: table
    fields:
    - products.category
    - products.department
    - order_items.count
    - order_items.total_sale_price
    pivots:
    - products.department
    sorts:
    - order_items.count desc 1
    - products.department
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
    row: 37
    col: 12
    width: 12
    height: 10
  - name: Top Purchasers of Brand
    title: Top Purchasers of Brand
    model: powered_by
    explore: order_items
    type: table
    fields:
    - users.name
    - users.email
    - users.history
    - order_items.count
    - order_items.total_sale_price
    sorts:
    - order_items.count desc
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Brand Name: products.brand
      Date: order_items.created_date
    row: 19
    col: 12
    width: 12
    height: 8
  - name: Website Sessions by Hour of Day and User Lifetime Order Tier
    title: Website Sessions by Hour of Day and User Lifetime Order Tier
    model: powered_by
    explore: events
    type: looker_column
    fields:
    - user_order_facts.lifetime_orders_tier
    - sessions.count
    - events.event_hour_of_day
    pivots:
    - user_order_facts.lifetime_orders_tier
    fill_fields:
    - events.event_hour_of_day

    sorts:
    - user_order_facts.lifetime_orders_tier 0
    - events.event_hour_of_day
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    stacking: normal
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    label_density: 25
    legend_position: center
    y_axis_combined: true
    colors:
    - "#2DA5DE"
    - "#57BEBE"
    - "#EA8A2F"
    - "#F2B431"
    - "#64518A"
    - "#8D7FB9"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    show_null_labels: false
    ordering: none
    show_null_points: true
    point_style: none
    interpolation: linear
    series_labels:
      '1': 1 Lifetime Purchase
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    hidden_series:
    - Undefined
    listen:
      Brand Name: product_viewed.brand
      Date: events.event_date
    note_state: collapsed
    note_display: hover
    note_text: this is a note about orders
    row: 3
    col: 11
    width: 13
    height: 8
  - name: Brand Share of Wallet over Customer Lifetime
    title: Brand Share of Wallet over Customer Lifetime
    model: powered_by
    explore: orders_with_share_of_wallet_application
    type: table
    fields:
    - order_items.months_since_signup
    - order_items_share_of_wallet.total_sale_price_brand_v2
    - order_facts.is_first_purchase
    pivots:
    - order_facts.is_first_purchase
    filters:
      order_items.months_since_signup: "<=18"
    sorts:
    - order_items.share_of_wallet_brand_within_company desc 0
    - order_items.item_comparison
    - order_items.months_since_signup
    - order_facts.is_first_purchase
    limit: 2
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    show_value_labels: false
    font_size: 12
    value_labels: legend
    label_type: labPer
    stacking: percent
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    colors:
    - "#F2B431"
    - "#8D7FB9"
    - "#7F7977"
    - "#B2A898"
    - "#494C52#64518A"
    y_axis_orientation:
    - left
    - right
    series_types: {}
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Brand Name: order_items_share_of_wallet.brand
    row: 11
    col: 0
    width: 12
    height: 8
  - name: Most Correlated Brands
    title: Most Correlated Brands
    model: powered_by
    explore: affinity
    type: looker_line
    fields:
    - product_b.brand
    - affinity.avg_order_affinity
    - affinity.avg_user_affinity
    - affinity.combined_affinity
    filters:
      affinity.product_b_id: "-NULL"
      affinity.avg_order_affinity: NOT NULL
    sorts:
    - affinity.combined_affinity desc
    limit: 15
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors:
    - "#57BEBE"
    - "#EA8A2F"
    - "#F2B431"
    - "#64518A"
    - "#8D7FB9"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    color_palette: Custom
    show_null_points: true
    point_style: circle_outline
    hidden_series:
    - product_a.count
    - product_b.count
    interpolation: linear
    hidden_fields:
    - affinity.combined_affinity
    listen:
      Brand Name: product_a.brand
    row: 27
    col: 0
    width: 12
    height: 10
  - name: Purchasers of This Brand Also Bought (Brand Affinity)
    title: Purchasers of This Brand Also Bought (Brand Affinity)
    model: powered_by
    explore: affinity
    type: table
    fields:
    - product_a.brand
    - product_b.brand
    - affinity.avg_order_affinity
    - affinity.avg_user_affinity
    - affinity.combined_affinity
    filters:
      affinity.product_b_id: "-NULL"
      affinity.avg_order_affinity: NOT NULL
    sorts:
    - affinity.combined_affinity desc
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hidden_fields:
    - affinity.combined_affinity
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Brand Name: product_a.brand
    row: 11
    col: 12
    width: 12
    height: 8
  filters:
  - name: Brand Name
    title: Brand Name
    type: field_filter
    default_value: Calvin Klein
    model: powered_by
    explore: order_items
    field: products.brand
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false


#########################################
############Customer Lookup #############
#########################################
- dashboard: customer_lookup
  title: Customer Lookup
  layout: newspaper

  elements:
  - name: User Info
    title: User Info
    model: powered_by
    explore: order_items
    type: looker_single_record
    fields:
    - users.id
    - users.email
    - users.name
    - users.traffic_source
    - users.created_month
    - users.age
    - users.gender
    - users.city
    - users.state
    - users.zip
    - users.history
    filters:
      order_items.created_date: 99 years
    sorts:
    - users.zip
    limit: 1
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_null_labels: false
    show_view_names: false
    show_row_numbers: true
    listen:
      Email: users.email
    row: 0
    col: 0
    width: 8
    height: 6
  - name: Lifetime Orders
    title: Lifetime Orders
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.order_count
    filters:
      order_items.created_date: 99 years
    sorts:
    - order_items.order_count desc
    limit: 500
    show_null_labels: false
    user_access_filters: {}
    listen:
      Email: users.email
    row: 6
    col: 0
    width: 4
    height: 4
  - name: Total Items Returned
    title: Total Items Returned
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.count
    filters:
      order_items.returned_date: NOT NULL
    sorts:
    - order_items.count desc
    limit: 500
    show_null_labels: false
    font_size: medium
    text_color: black
    listen:
      Email: users.email
    row: 6
    col: 4
    width: 4
    height: 4
  - name: Lifetime Spend
    title: Lifetime Spend
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.total_sale_price
    filters:
      order_items.created_date: 99 years
    sorts:
    - order_items.total_sale_price desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_null_labels: false
    font_size: medium
    text_color: black
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    color_palette: Default
    listen:
      Email: users.email
    row: 6
    col: 8
    width: 8
    height: 4
  - name: Items Order History
    title: Items Order History
    model: powered_by
    explore: order_items
    type: table
    fields:
    - order_items.id
    - products.item_name
    - order_items.status
    - order_items.created_date
    - order_items.shipped_date
    - order_items.delivered_date
    - order_items.returned_date
    - distribution_centers.name
    filters:
      order_items.created_date: 99 years
    sorts:
    - order_items.created_date desc
    limit: 500
    show_view_names: true
    show_row_numbers: true
    listen:
      Email: users.email
    row: 10
    col: 0
    width: 16
    height: 6
  - name: Favorite Categories
    title: Favorite Categories
    model: powered_by
    explore: order_items
    type: looker_pie
    fields:
    - products.category
    - order_items.count
    filters:
      order_items.created_date: 99 years
    sorts:
    - order_items.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    show_view_names: true
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    listen:
      Email: users.email
    row: 6
    col: 16
    width: 8
    height: 10
  - name: User Avatar
    title: User Avatar
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - users.user_image
    sorts:
    - users.created_month desc
    - users.user_image
    limit: 500
    font_size: medium
    listen:
      Email: users.email
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 8
    width: 6
    height: 6
  - name: User Location
    title: User Location
    model: powered_by
    explore: order_items
    type: looker_geo_coordinates
    fields:
    - users.zip
    - users.count
    sorts:
    - users.created_month desc
    - users.zip
    limit: 1
    query_timezone: America/Los_Angeles
    show_view_names: true
    font_size: medium
    text_color: "#49719a"
    map: usa
    map_projection: ''
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 42.35930500076174
    map_longitude: -71.02283477783203
    map_zoom: 11
    point_radius: 10
    loading: false
    point_color: "#64518A"
    listen:
      Email: users.email
    row: 0
    col: 14
    width: 10
    height: 6
  filters:
  - name: Email
    title: Email
    type: field_filter
    default_value: jgraham@gmail.com
    model: powered_by
    explore: order_items
    field: users.email
    listens_to_filters: []
    allow_multiple_values: true
    required: false


######################################
########## Web Analytics##############
#######################################
- dashboard: web_analytics
  title: Web Analytics
  layout: newspaper

  elements:
  - name: Total Visitors
    title: Total Visitors
    model: powered_by
    explore: events
    type: single_value
    fields:
    - events.unique_visitors
    - events.event_week
    filters:
      events.event_date: 2 weeks ago for 2 weeks
    sorts:
    - events.event_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: change
      label: Change
      expression: "${events.unique_visitors}-offset(${events.unique_visitors},1)"
    query_timezone: America/Los_Angeles
    font_size: medium
    value_format: ''
    text_color: black
    colors:
    - "#1f78b4"
    - "#a6cee3"
    - "#33a02c"
    - "#b2df8a"
    - "#e31a1c"
    - "#fb9a99"
    - "#ff7f00"
    - "#fdbf6f"
    - "#6a3d9a"
    - "#cab2d6"
    - "#b15928"
    - "#edbc0e"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Weekly Change
    single_value_title: Visitors Past Week
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 0
    width: 8
    height: 3
  - name: Total Converted Visitors
    title: Total Converted Visitors
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - users.count
    sorts:
    - users.count desc
    limit: 500
    font_size: medium
    text_color: black
    listen:
      Traffic Source: users.traffic_source
      Date: order_items.created_date
    row: 0
    col: 16
    width: 8
    height: 3
  - name: Total Profit
    title: Total Profit
    model: powered_by
    explore: order_items
    type: single_value
    fields:
    - order_items.total_sale_price
    sorts:
    - orders.total_profit_k desc
    - order_items.total_sale_price desc
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    value_format: "$#,###"
    text_color: black
    colors:
    - "#1f78b4"
    - "#a6cee3"
    - "#33a02c"
    - "#b2df8a"
    - "#e31a1c"
    - "#fb9a99"
    - "#ff7f00"
    - "#fdbf6f"
    - "#6a3d9a"
    - "#cab2d6"
    - "#b15928"
    - "#edbc0e"
    color_palette: Default
    listen:
      Traffic Source: users.traffic_source
      Date: order_items.created_date
    note_state: expanded
    note_display: below
    note_text: ''
    row: 0
    col: 8
    width: 8
    height: 3
  - name: Visits by Browser
    title: Visits by Browser
    model: powered_by
    explore: events
    type: looker_pie
    fields:
    - events.browser
    - events.count
    sorts:
    - events.count desc
    limit: 50
    query_timezone: America/Los_Angeles
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    show_view_names: true
    colors:
    - "#635189"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#e9b404"
    - "#49cec1"
    - "#a2dcf3"
    - "#1ea8df"
    - "#7F7977"
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 25
    col: 0
    width: 12
    height: 8
  - name: How Long do Visitors Spend on Website?
    title: How Long do Visitors Spend on Website?
    model: powered_by
    explore: events
    type: looker_bar
    fields:
    - sessions.duration_seconds_tier
    - sessions.count
    sorts:
    - sessions.duration_seconds_tier
    limit: 500
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels:
    - Number of Sessions
    x_axis_gridlines: false
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_label: Session Duration in Seconds
    show_value_labels: false
    show_view_names: true
    show_null_labels: false
    stacking: normal
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    x_axis_scale: auto
    label_density: 25
    legend_position: center
    y_axis_combined: true
    ordering: none
    colors:
    - "#8D7FB9"
    x_axis_label_rotation: -45
    show_dropoff: false
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 18
    col: 0
    width: 11
    height: 7
  - name: Bounce Rate by Page
    title: Bounce Rate by Page
    model: powered_by
    explore: sessions
    type: looker_column
    fields:
    - events.event_type
    - events.bounce_rate
    - sessions.count
    filters:
      events.event_type: -"Purchase",-"Login",-"Register",-"History",-"Cancel",-"Return"
      sessions.session_start_date: 7 days
    sorts:
    - sessions.count desc
    limit: 10
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_orientation:
    - left
    - right
    series_types:
      events.bounce_rate: line
      __FILE: powered_by_event/web_analytics.dashboard.lookml
      __LINE_NUM: 340
    y_axis_combined: false
    label_density: 10
    series_labels:
      events.bounce_rate: Bounce Rate by Page
      events.count: Number of Page Views
      __FILE: powered_by_event/web_analytics.dashboard.lookml
      __LINE_NUM: 347
    legend_position: center
    colors:
    - "#a2dcf3"
    - "#64518A"
    - "#8D7FB9"
    show_null_labels: false
    ordering: none
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 10
    col: 12
    width: 12
    height: 8
  - name: Most Popular Brands
    title: Most Popular Brands
    model: powered_by
    explore: events
    type: table
    fields:
    - product_viewed.brand
    - events.count
    - events.unique_visitors
    - sessions.count_purchase
    - sessions.cart_to_checkout_conversion
    filters:
      product_viewed.brand: "-NULL"
    sorts:
    - events.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    show_value_labels: true
    show_null_labels: false
    stacking: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_combined: true
    series_labels:
      events.count: Total Pageviews
      __FILE: powered_by_event/web_analytics.dashboard.lookml
      __LINE_NUM: 540
    y_axis_labels:
    - Total Pageviews
    x_axis_label: Brand Name
    label_density: 25
    legend_position: center
    ordering: none
    colors:
    - "#64518A"
    - "#8D7FB9"
    hide_legend: false
    show_dropoff: false
    truncate_column_names: false
    table_theme: gray
    limit_displayed_rows: false
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 25
    col: 12
    width: 12
    height: 8
  - name: eCommerce Funnel
    title: eCommerce Funnel
    model: powered_by
    explore: sessions
    type: looker_column
    fields:
    - sessions.all_sessions
    - sessions.count_browse_or_later
    - sessions.count_product_or_later
    - sessions.count_cart_or_later
    - sessions.count_purchase
    filters:
      users.traffic_source: ''
    sorts:
    - sessions.all_sessions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: Sessions
    barColors:
    - "#5245ed"
    - "#49cec1"
    smoothedBars: true
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    show_dropoff: true
    point_style: circle
    show_null_points: true
    interpolation: linear
    series_types: {}
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: sessions.session_start_date
    row: 3
    col: 10
    width: 14
    height: 7
  - name: Global Events
    title: Global Events
    model: powered_by
    explore: events
    type: looker_map
    fields:
    - events.approx_location
    - events.count
    sorts:
    - events.count desc
    limit: 1000
    query_timezone: America/Los_Angeles
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    map: world
    map_projection: ''
    quantize_colors: false
    colors:
    - whitesmoke
    - "#64518A"
    outer_border_color: grey
    inner_border_color: lightgrey
    map_pannable: true
    map_zoomable: true
    map_marker_color:
    - "#1ea8df"
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 10
    col: 0
    width: 12
    height: 8
  - name: Daily Session and User Count
    title: Daily Session and User Count
    model: powered_by
    explore: sessions
    type: looker_line
    fields:
    - sessions.session_start_date
    - sessions.count
    - sessions.overall_conversion
    filters:
      sessions.session_start_date: 7 days
    sorts:
    - sessions.session_start_date
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors:
    - "#5245ed"
    - "#1ea8df"
    - "#353b49"
    - "#49cec1"
    - "#b3a0dd"
    - "#db7f2a"
    - "#706080"
    - "#a2dcf3"
    - "#776fdf"
    - "#e9b404"
    - "#635189"
    show_row_numbers: true
    point_style: circle_outline
    interpolation: linear
    discontinuous_nulls: false
    show_null_points: true
    ordering: none
    show_null_labels: false
    y_axis_orientation:
    - left
    - right
    hide_legend: false
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    row: 18
    col: 11
    width: 13
    height: 7
  - name: Percent Purchasing Sessions
    title: Percent Purchasing Sessions
    model: powered_by
    explore: sessions
    type: looker_pie
    fields:
    - sessions.includes_purchase
    - sessions.count
    filters:
      sessions.session_start_date: 7 days
    sorts:
    - sessions.all_sessions desc
    - sessions.includes_purchase
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    colors:
    - "#5245ed"
    - "#a2dcf3"
    show_row_numbers: true
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    point_style: circle_outline
    interpolation: linear
    discontinuous_nulls: false
    show_null_points: true
    series_types:
      users.count: column
    inner_radius: 50
    series_labels:
      'No': No Purchase
      'Yes': Results in Purchase
    series_colors: {}
    listen:
      Browser: events.browser
      Traffic Source: users.traffic_source
      Date: events.event_date
    note_state: collapsed
    note_display: below
    note_text: Percent of unique visits that result in a purchase
    row: 3
    col: 0
    width: 10
    height: 7
  filters:
  - name: Browser
    title: Browser
    type: field_filter
    default_value: ''
    model: powered_by
    explore: events
    field: events.browser
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Traffic Source
    title: Traffic Source
    type: field_filter
    default_value:
    model: powered_by
    explore: events
    field: users.traffic_source
    listens_to_filters: []
    allow_multiple_values: true
    required: false
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false



########################################
##########Shipping and Logistics #######
#########################################
- dashboard: shipping_logistics__operations
  title: Shipping Logistics & Operations
  layout: newspaper

  elements:
  - name: Order Shipment Status
    title: Order Shipment Status
    model: powered_by
    explore: order_items
    type: looker_column
    fields:
    - order_items.created_date
    - order_items.status
    - order_items.order_count
    pivots:
    - order_items.status
    filters:
      order_items.created_date: 60 days
      order_items.status: Complete,Shipped,Processing
    sorts:
    - order_items.created_date desc
    - order_items.status
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    color_palette: Custom
    limit_displayed_rows: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors:
    - green
    - red
    - orange
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Distribution Center: distribution_centers.name
    row: 0
    col: 0
    width: 8
    height: 7
  - name: Open Orders >3 Days Old - Immediate Action Required
    title: Open Orders >3 Days Old - Immediate Action Required
    model: powered_by
    explore: order_items
    type: table
    fields:
    - order_items.order_id
    - users.name
    - users.email
    - order_items.created_date
    - order_items.status
    - products.item_name
    filters:
      order_items.created_date: before 3 days ago
      order_items.status: '"Processing"'
    sorts:
    - order_items.created_date
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    listen:
      Distribution Center: distribution_centers.name
    row: 0
    col: 8
    width: 16
    height: 7
  - name: Open Orders - Where do we need to ship?
    title: Open Orders - Where do we need to ship?
    model: powered_by
    explore: order_items
    type: looker_map
    fields:
    - distribution_centers.location
    - users.approx_location
    - order_items.average_days_to_process
    filters:
      order_items.status: '"Processing"'
      order_items.order_count: ">0"
    sorts:
    - order_items.average_days_to_process desc
    limit: 500
    map_plot_mode: lines
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 36.31512514748051
    map_longitude: -92.10937499999999
    map_zoom: 3
    listen:
      Distribution Center: distribution_centers.name
    row: 7
    col: 12
    width: 12
    height: 8
  - name: Average Shipping Time to Users
    title: Average Shipping Time to Users
    model: powered_by
    explore: order_items
    type: looker_map
    fields:
    - users.approx_location
    - order_items.average_shipping_time
    filters:
      users.approx_location: inside box from 66.51326044311188, -225 to -40.979898069620134,
        45
      users.approx_location_bin_level: '7'
    sorts:
    - order_items.average_shipping_time desc
    limit: 5000
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 36.31512514748051
    map_longitude: -92.197265625
    map_zoom: 3
    listen:
      Distribution Center: distribution_centers.name
    row: 7
    col: 0
    width: 12
    height: 8
  - name: Most Common Shipping Locations
    title: Most Common Shipping Locations
    model: powered_by
    explore: order_items
    type: looker_map
    fields:
    - distribution_centers.location
    - users.approx_location
    - order_items.order_count
    filters:
      order_items.order_count: ">30"
    sorts:
    - order_items.created_date
    - order_items.order_id
    - order_items.order_count desc
    limit: 1000
    map_plot_mode: lines
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 43.58039085560786
    map_longitude: -61.52343749999999
    map_zoom: 3
    map_value_scale_clamp_max: 300
    map_value_scale_clamp_min: 30
    listen:
      Distribution Center: distribution_centers.name
    row: 15
    col: 12
    width: 12
    height: 8
  - name: Inventory Aging Report
    title: Inventory Aging Report
    model: powered_by
    explore: order_items
    type: looker_column
    fields:
    - inventory_items.days_in_inventory_tier
    - inventory_items.count
    filters:
      inventory_items.is_sold: 'No'
    sorts:
    - inventory_items.days_in_inventory_tier
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors:
    - grey
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors: {}
    listen:
      Distribution Center: distribution_centers.name
    note_state: collapsed
    note_display: below
    note_text: Unsold inventory only
    row: 15
    col: 0
    width: 12
    height: 8
  filters:
  - name: Distribution Center
    title: Distribution Center
    type: field_filter
    default_value: Chicago IL
    model: powered_by
    explore: order_items
    field: distribution_centers.name
    listens_to_filters: []
    allow_multiple_values: true
    required: false

- dashboard: supplier_overview
  title: Supplier Overview
  layout: newspaper
  embed_style:
    background_color: fafaf7
    show_title: false
    title_color: "#C26B42"
    show_filters_bar: false
    tile_text_color: "#6f7a87"
    text_tile_text_color: ''
  elements:
  - title: Total Orders
    name: Total Orders
    model: powered_by
    explore: order_items
    type: single_value
    fields: [order_items.order_count, order_items.reporting_period]
    filters:
      order_items.reporting_period: "-NULL"
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "(${order_items.order_count}\
          \ - offset(${order_items.order_count},1))/ offset(${order_items.order_count},1)",
        value_format: !!null '', value_format_name: percent_0}]
    query_timezone: America/Los_Angeles
    font_size: medium
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    text_color: "#434A52"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Orders This Year
    hidden_fields: [order_items.reporting_period]
    comparison_label: vs Same Period Last Year
    y_axes: []
    listen:
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 0
    col: 18
    width: 6
    height: 4
  - title: Average Order Profit
    name: Average Order Profit
    model: powered_by
    explore: order_items
    type: single_value
    fields: [order_items.average_gross_margin]
    filters: {}
    sorts: [order_items.order_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    color_palette: Default
    text_color: "#434A52"
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 0
    col: 12
    width: 6
    height: 4
  - title: Number of First Purchasers
    name: Number of First Purchasers
    model: powered_by
    explore: order_items
    type: single_value
    fields: [order_items.first_purchase_count]
    filters: {}
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '10000', value_format: !!null '',
        value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    font_size: medium
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    text_color: "#434A52"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: New Users Acquired
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 0
    col: 0
    width: 6
    height: 4
  - title: Highest Spending Users
    name: Highest Spending Users
    model: powered_by
    explore: order_items
    type: looker_map
    fields: [users.approx_location, order_items.order_count, users.count, order_items.total_sale_price,
      order_items.average_spend_per_user]
    filters:
      users.country: '"USA"'
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: false
    quantize_map_value_colors: false
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    color_palette: Default
    hidden_fields: [order_items.order_count, users.count, order_items.total_sale_price]
    map_latitude: 36.66841891894786
    map_longitude: -122.431640625
    map_zoom: 3
    map_marker_radius_max: 20
    map_value_colors: ["#E4ECF3", "#416E9A"]
    y_axes: []
    listen:
      Date: order_items.created_date
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 4
    col: 14
    width: 10
    height: 8
  - title: 30 Day Repeat Purchase Rate
    name: 30 Day Repeat Purchase Rate
    model: powered_by
    explore: order_items
    type: single_value
    fields: [order_items.30_day_repeat_purchase_rate]
    filters: {}
    sorts: [order_items.order_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    color_palette: Default
    font_size: medium
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    text_color: "#434A52"
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 0
    col: 6
    width: 6
    height: 4
  - title: Total Sales, Year over Year
    name: Total Sales, Year over Year
    model: powered_by
    explore: order_items
    type: looker_line
    fields: [order_items.created_month_num, order_items.created_year, order_items.total_sale_price]
    pivots: [order_items.created_year]
    filters:
      order_items.created_year: before 0 months ago
      order_items.delivered_date: after 2012/01/01
      order_items.order_id: ">2"
    sorts: [order_items.created_year desc, order_items.created_month_num]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: right
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors: ["#434A52", "#858E93", "#416E9A", "#C26B42", "#1BD4BC"]
    point_style: circle_outline
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_null_points: false
    x_axis_label: Month of Year
    hidden_fields: []
    y_axes: []
    listen:
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 4
    col: 0
    width: 14
    height: 8
  - title: User Basic Demographic Profile
    name: User Basic Demographic Profile
    model: powered_by
    explore: order_items
    type: looker_donut_multiples
    fields: [users.traffic_source, users.gender, order_items.count]
    pivots: [users.traffic_source]
    filters: {}
    sorts: [order_items.order_count desc, users.traffic_source]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_value_labels: true
    show_view_names: true
    color_palette: Default
    font_size: 12
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: ["#858E93", "#416E9A", "#BED1E2", "#C26B42", "#1BD4BC"]
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 12
    col: 0
    width: 10
    height: 8
  - title: Percent of Cohort Still Active by Traffic Source
    name: Percent of Cohort Still Active by Traffic Source
    model: powered_by
    explore: order_items
    type: looker_line
    fields: [order_items.months_since_signup, users.traffic_source, users.count]
    pivots: [users.traffic_source]
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts: [users.traffic_source, order_items.months_since_signup]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: pct_cohort_still_active, label: Pct Cohort
          Still Active, expression: '100.0 * ${users.count} / max(${users.count})',
        value_format: "#.#\\%", value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors: ["#9EA5A9", "#416E9A", "#BED1E2", "#C26B42", "#1BD4BC"]
    color_palette: Custom
    hidden_fields: [users.count]
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    y_axis_max: ['40']
    y_axes: []
    listen:
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 12
    col: 10
    width: 14
    height: 8
  - title: User Behavior by Traffic Source
    name: User Behavior by Traffic Source
    model: powered_by
    explore: order_items
    type: looker_column
    fields: [users.traffic_source, order_items.average_sale_price, user_order_facts.average_lifetime_orders]
    filters:
      users.traffic_source: "-NULL"
    sorts: [users.traffic_source]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    colors: ["#416E9A", "#BED1E2"]
    color_palette: Custom
    font_size: '13'
    y_axis_labels: [Average Sale Price ($)]
    y_axis_orientation: [left, right]
    y_axis_value_format: '0'
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 20
    col: 0
    width: 10
    height: 8
  - title: Total Spend by Cohort
    name: Total Spend by Cohort
    model: powered_by
    explore: order_items
    type: looker_line
    fields: [order_items.months_since_signup, users.created_month, order_items.total_sale_price]
    pivots: [users.created_month]
    filters:
      order_items.created_month: 12 months ago for 12 months
      users.created_month: 12 months
    sorts: [users.traffic_source, order_items.months_since_signup, users.created_month
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: total_sale_price, label: Total Sale Price,
        expression: "if(\nis_null(${order_items.total_sale_price})\n,null\n,running_total(${order_items.total_sale_price}))",
        value_format: "$#,###", value_format_name: !!null ''}]
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors: ["#434A52", "#C26B42", "#1BD4BC", "#858E93", "#9EA5A9", "#416E9A", "#5D83A9",
      "#BED1E2"]
    color_palette: Custom
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    hidden_fields: [order_items.total_sale_price]
    y_axis_value_format: "$#,##0"
    show_null_points: false
    y_axes: []
    listen:
      Region: users.state_region
      Gender: users.gender
      Category: products.category_type
    row: 20
    col: 10
    width: 14
    height: 8
  - title: Orders by Day and Category
    name: Orders by Day and Category
    model: powered_by
    explore: order_items
    type: looker_area
    fields: [order_items.created_date, products.category, order_items.count]
    pivots: [products.category]
    filters:
      products.category: '"Blazers & Jackets","Sweaters","Pants","Shorts","Fashion
        Hoodies & Sweatshirts","Accessories"'
    sorts: [products.category, order_items.created_date]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors: ["#1BD4BC", "#C26B42", "#BED1E2", "#5D83A9", "#416E9A", "#9EA5A9"]
    color_palette: Custom
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    x_axis_datetime_tick_count: 4
    y_axis_labels: ["# Order Items"]
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      Region: users.state_region
      Gender: users.gender
    row: 36
    col: 0
    width: 24
    height: 8
  - title: Website Visit Volume vs Conversion Rate
    name: Website Visit Volume vs Conversion Rate
    model: powered_by
    explore: events
    type: looker_column
    fields: [events.event_day_of_week, events.sessions_count, events.unique_visitors,
      sessions.overall_conversion]
    fill_fields: [events.event_day_of_week]
    sorts: [events.event_day_of_week]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    series_types:
      events.sessions_count: line
      events.unique_visitors: line
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: events.sessions_count,
            name: Sessions Count}, {id: events.unique_visitors, name: Unique Visitors}]},
      {label: !!null '', maxValue: !!null '', minValue: !!null '', orientation: right,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: sessions.overall_conversion,
            name: Overall Conversion}]}]
    series_labels:
      events.sessions_count: Total Visitors
    colors: ["#1EA8DF", "#8ED3EF", "#B1A8C4", "#635189"]
    series_colors: {}
    label_color: ["#EA8A2F", "#e9b404"]
    trend_lines: []
    column_spacing_ratio:
    column_group_spacing_ratio:
    hidden_fields: []
    listen:
      Date: events.event_date
      Region: users.state_region
      Gender: users.gender
      Category: product_viewed.category_type
    row: 28
    col: 0
    width: 12
    height: 8
  - title: Most Viewed Categories Online
    name: Most Viewed Categories Online
    model: powered_by
    explore: sessions
    type: table
    fields: [events.sessions_count, sessions.cart_to_checkout_conversion, product_viewed.category]
    sorts: [events.sessions_count desc]
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    row: 28
    col: 12
    width: 12
    height: 8
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: powered_by
    explore: order_items
    listens_to_filters: []
    field: users.state_region
  - name: Gender
    title: Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: powered_by
    explore: order_items
    listens_to_filters: []
    field: users.gender
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: powered_by
    explore: order_items
    listens_to_filters: []
    field: products.category_type
