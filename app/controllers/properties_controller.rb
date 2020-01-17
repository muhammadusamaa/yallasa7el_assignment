class PropertiesController < ApplicationController
  def index
    
  end

  def search  

  if params[:property][:destination].blank?  
    redirect_to(root_path, alert: "Empty field!") and return  
  else  
    parameter = params[:property][:destination].capitalize      
    @results = Property.where(destination: parameter)
  end  
end
  
  #def search_by_destination
    #Property.search do
      #fulltext 'Gouna'
    #end
  #end
end
