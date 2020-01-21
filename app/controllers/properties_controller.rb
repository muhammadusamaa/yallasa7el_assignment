class PropertiesController < ApplicationController
  before_action  :init_search, only: [:search]
  before_action :authenticate_user!

  def index
    
  end

  def search
    destination = params[:property][:destination]
    number_of_rooms = params[:property][:number_of_rooms]
    if destination.blank? && number_of_rooms.blank?
      redirect_to(root_path, alert: "Empty field!") and return
    end
    @results = if destination.blank?  
      Property.search(number_of_rooms, where: {number_of_rooms: number_of_rooms})
    elsif number_of_rooms.blank?
      Property.search(destination, fields: [:destination], match: :word_middle) 
    else
      Property.search(destination, where: {number_of_rooms: number_of_rooms}, fields: [:destination], match: :word_middle)
    end

    respond_to do |format|               
      format.js
    end        
  end

  private
  def init_search
    Property.reindex
  end
  # def search
  #   properties = Property.arel_table
  #   destination = params[:property][:destination]
  #   number_of_rooms = params[:property][:number_of_rooms]
  #   if destination.blank? && number_of_rooms.blank?
  #     redirect_to(root_path, alert: "Empty field!") and return
  #   end

  #   @results =     if destination.blank?
  #     Property.where(number_of_rooms: number_of_rooms.to_i)
  #   elsif number_of_rooms.blank?
  #     Property.where("lower(destination) LIKE ?", "%#{destination}%")
  #   else
  #     Property.where("lower(destination) LIKE ? AND number_of_rooms = ?", "%#{destination}%", number_of_rooms.to_i)
  #   end
  # end
end

