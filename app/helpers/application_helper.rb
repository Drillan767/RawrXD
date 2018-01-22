module ApplicationHelper

  def title
    base_title = Base.first.default_title if Base.exists?

    base_title = 'RawrXD' if base_title.nil?

    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end