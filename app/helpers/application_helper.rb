module ApplicationHelper

  def titre
    base_titre = 'Joseph Levarato'

    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end
end