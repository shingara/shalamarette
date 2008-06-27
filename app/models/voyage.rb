class Voyage
  include DataMapper::Resource

  property :id, Integer, :serial => true
  property :title, String
  
  has n, :jours
  
end
