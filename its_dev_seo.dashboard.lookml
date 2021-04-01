- dashboard: its_dev_seo
  title: its_dev_seo
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: 회사별 요청 건수(Top 10), eso_srm.emp_filter
    name: 회사별 요청 건수(Top 10)
    model: vntg_its_dev_seo
    explore: eso_srm
    type: looker_pie
    fields: [eso_srm.srm_sys_id, eso_srm.srm_count]
    filters:
      eso_srm.sys_filter: Level 1
      eso_srm.srm_sys_id: "-NULL"
    sorts: [eso_srm.srm_count desc]
    limit: 10
    value_labels: labels
    label_type: labVal
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      "(서비스요청)담당자구분": eso_srm.emp_filter
    row: 0
    col: 0
    width: 7
    height: 9
  - title: 서비스요청 미처리 건
    name: 서비스요청 미처리 건
    model: vntg_its_dev_seo
    explore: eso_srm
    type: single_value
    fields: [eso_srm.untreated_count]
    filters:
      eso_srm.emp_filter: 접수자
      eso_srm.sys_filter: Level 1
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    custom_color: "#ff190c"
    defaults_version: 1
    series_types: {}
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    listen: {}
    row: 0
    col: 7
    width: 5
    height: 3
  - title: 서비스요청 기한초과 건
    name: 서비스요청 기한초과 건
    model: vntg_its_dev_seo
    explore: eso_srm
    type: single_value
    fields: [eso_srm.over_date]
    filters:
      eso_srm.emp_filter: 접수자
      eso_srm.sys_filter: Level 1
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    custom_color: "#ff190c"
    defaults_version: 1
    series_types: {}
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    listen: {}
    row: 0
    col: 12
    width: 5
    height: 3
  - title: 회사별 대행등록 건(Top 10)
    name: 회사별 대행등록 건(Top 10)
    model: vntg_its_dev_seo
    explore: eso_srm
    type: looker_pie
    fields: [eso_srm.srm_count, eso_srm.srm_sys_id]
    filters:
      eso_srm.sys_filter: Level 1
      eso_srm.srm_proxy_yn: 'Yes'
      eso_srm.srm_sys_id: "-NULL"
    sorts: [eso_srm.srm_count desc]
    limit: 10
    value_labels: labels
    label_type: labVal
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_column_widths:
      eso_srm.srm_sys_id: 392
    listen:
      "(서비스요청)담당자구분": eso_srm.emp_filter
    row: 0
    col: 17
    width: 7
    height: 9
  - title: 회사별 미처리 건
    name: 회사별 미처리 건
    model: vntg_its_dev_seo
    explore: eso_srm
    type: looker_grid
    fields: [eso_srm.srm_sys_id, eso_srm.untreated_count]
    filters:
      eso_srm.emp_filter: 접수자
      eso_srm.sys_filter: Level 1
    sorts: [eso_srm.untreated_count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths:
      eso_srm.srm_sys_id: 148
      eso_srm.untreated_count: 138
    series_cell_visualizations:
      eso_srm.untreated_count:
        is_active: true
    value_labels: labels
    label_type: labVal
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 3
    col: 7
    width: 5
    height: 6
  - title: 회사별 기한초과 건
    name: 회사별 기한초과 건
    model: vntg_its_dev_seo
    explore: eso_srm
    type: looker_grid
    fields: [eso_srm.over_date, eso_srm.srm_sys_id]
    filters:
      eso_srm.emp_filter: 접수자
      eso_srm.sys_filter: Level 1
    sorts: [eso_srm.over_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 3
    col: 12
    width: 5
    height: 6
  - title: 월별 완료 건
    name: 월별 완료 건
    model: vntg_its_dev_seo
    explore: eso_srm
    type: looker_line
    fields: [eso_srm.srm_actfinish_dttm_month, eso_srm.srm_count]
    fill_fields: [eso_srm.srm_actfinish_dttm_month]
    filters:
      eso_srm.emp_filter: 접수자
      eso_srm.sys_filter: Level 1
      eso_srm.srm_actfinish_dttm_month: NOT NULL
    sorts: [eso_srm.srm_actfinish_dttm_month desc]
    limit: 500
    dynamic_fields: [{measure: count_of_month, based_on: eso_srm.srm_actfinish_dttm_month,
        expression: '', label: Count of 실제완료일시 Month, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_month_2, based_on: eso_srm.srm_actfinish_dttm_month,
        expression: '', label: Count of 실제완료일시 Month, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: eso_srm.srm_count, id: eso_srm.srm_count,
            name: 건 수}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      eso_srm.srm_count: "#592EC2"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      eso_srm.srm_sys_id: 148
      eso_srm.untreated_count: 138
    series_cell_visualizations:
      eso_srm.untreated_count:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: labels
    label_type: labVal
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 9
    col: 0
    width: 12
    height: 6
  - title: 최근 1년 담당자별 완료 건(Top 10)
    name: 최근 1년 담당자별 완료 건(Top 10)
    model: vntg_its_dev_seo
    explore: eso_srm
    type: looker_bar
    fields: [eso_srm.srm_count, eso_srm.emp_id]
    filters:
      eso_srm.emp_filter: 처리자
      eso_srm.sys_filter: Level 1
      eso_srm.srm_actfinish_dttm_month: after 1 years ago
    sorts: [eso_srm.srm_count desc]
    limit: 10
    dynamic_fields: [{measure: count_of_month, based_on: eso_srm.srm_actfinish_dttm_month,
        expression: '', label: Count of 실제완료일시 Month, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_month_2, based_on: eso_srm.srm_actfinish_dttm_month,
        expression: '', label: Count of 실제완료일시 Month, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: eso_srm.srm_count,
            id: eso_srm.srm_count, name: 건 수}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_labels: {}
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      eso_srm.srm_sys_id: 148
      eso_srm.untreated_count: 138
    series_cell_visualizations:
      eso_srm.untreated_count:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: labels
    label_type: labVal
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen: {}
    row: 9
    col: 12
    width: 12
    height: 6
  filters:
  - name: "(서비스요청)담당자구분"
    title: "(서비스요청)담당자구분"
    type: field_filter
    default_value: 접수자
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: vntg_its_dev_seo
    explore: eso_srm
    listens_to_filters: []
    field: eso_srm.emp_filter
