module ApplicationHelper
  
  def full_title(input_title)
    base_title = 'Ruby on Rails Tutorial'
    if input_title.empty?
      base_title
    else
      "#{base_title} | #{input_title}"
    end
  end

end
