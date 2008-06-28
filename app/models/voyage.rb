class Voyage
  include DataMapper::Resource

  property :id, Integer, :serial => true, :key => true
  property :title, String, :key => true
  
  has n, :jours

  validates_present :title
  validates_is_unique :title
  
end
