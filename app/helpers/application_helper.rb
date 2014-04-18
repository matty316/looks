module ApplicationHelper
  def full_title(page)
    if page.blank?
      "Looks"
    else
      "Looks | #{page}"
    end
  end
end
