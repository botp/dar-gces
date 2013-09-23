module ApplicationHelper
  # creates a link of subtitle w back link to main data entry listing  
  def backlink_to text,backlink=nil
    link_to text, backlink || "/data_entry" 
  end

  # create a link of type button
  def buttonlink_to text, path, klass={}
    link_to text, path, klass.merge(class: "btn btn-primary")
  end  
end
