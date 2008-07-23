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

  def show
    @voyage = Voyage.get(params[:id])
    display @voyage
  end

  def delete
    Voyage.get(params[:id]).destroy
    redirect url(:admin_voyages)
  end


  def edit
    @voyage = Voyage.get(params[:id])
    display @voyage
  end

  def update
    @voyage = Voyage.get(params[:id])
    @voyage.update_attributes(params[:voyage])
    redirect url(:admin_voyage)
  end

end
end # Admin
