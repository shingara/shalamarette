class Voyage
  include DataMapper::Resource

  property :id, Integer, :serial => true, :key => true
  property :title, String
  
  has n, :jours
  
end
