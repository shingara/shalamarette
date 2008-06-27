module Admin
class Voyages < Application
  
  def index
    @voyages = Voyage.all
    display @voyages
  end
  
end
end # Admin
