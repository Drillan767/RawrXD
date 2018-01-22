module ApplicationHelper

  def titre
    base_title = Base.first.default_title

    if @titre.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end