module ApplicationHelper
  def top_nav_link(link_text, link_path, link_icon, controllers: [], counter: 0, target: '')
    merged = (controllers & controller_path.split('/'))
    class_name = current_page?(link_path) ? 'active nav-link' : 'nav-link'
    class_name ||= merged.empty? ? 'nav-link' : 'active nav-link'

    content_tag(:li, :class => "nav-item") do
      link_to link_path, :class => class_name do
        link_text
      end
    end
  end


end
