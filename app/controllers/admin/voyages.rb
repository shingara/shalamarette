module Admin
class Voyages < Application
  
  def index
    @voyages = Voyage.all
    display @voyages
  end
  
  def new
    @voyage = Voyage.new
    display @voyage
  end

  def create
    Voyage.create params[:voyage]
    redirect url(:action => 'index')
  end
end
end # Admin
