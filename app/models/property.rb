class Property < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  searchkick word_middle: [:destination]

  def search_data
    {
      destination: destination,
      number_of_rooms: number_of_rooms.to_s
    }
  end
end
