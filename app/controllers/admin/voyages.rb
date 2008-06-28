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
    @voyage = Voyage.new(params[:voyage])
    if @voyage.save
      redirect url(:action => 'index')
    else
      render :new
    end
  end
end
end # Admin
