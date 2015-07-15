module ApplicationHelper
  def action_sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_action_column ? "current #{sort_direction}" : nil
    direction = column == sort_action_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end
  def item_sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_item_column ? "current #{sort_direction}" : nil
    direction = column == sort_item_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end
end
