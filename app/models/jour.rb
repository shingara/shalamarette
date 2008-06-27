class Jour
  include DataMapper::Resource

  property :id, Integer, :key => true, :serial => true
  property :order, Integer
  property :body, Text

  belongs_to :voyage
  
end
