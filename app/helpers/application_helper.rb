module ApplicationHelper
  # creates a link of subtitle w back link to main data entry listing  
  def link_to_subtitle(subtitle,backlink=nil)
    link_to subtitle, backlink || "/data_entry" 
  end
end
