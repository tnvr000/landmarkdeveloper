module ApplicationHelper
  def header_nav_classes(nav_item)
    classes = ['item']
    if action_name == nav_item
      classes << 'active'
    end
    return classes
  end
end
