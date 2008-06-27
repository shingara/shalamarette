class Jour
  include DataMapper::Resource

  property :id, Integer, :key => true, :serial => true
  property :order, Integer
  property :body, Text
  property :voyage_id, Integer, :index => true

  belongs_to :voyage
  
end
