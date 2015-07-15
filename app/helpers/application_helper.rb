module ApplicationHelper
  def activity_sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_activity_column ? "current #{sort_activities_direction}" : nil
    direction = column == sort_activity_column && sort_activities_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :activities_direction => direction, :page => nil), {:class => css_class}
  end
  def item_sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_item_column ? "current #{sort_items_direction}" : nil
    direction = column == sort_item_column && sort_items_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :items_direction => direction, :page => nil), {:class => css_class}
  end
end
