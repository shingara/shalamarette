class Admin::Jours < Application

  before :get_voyage

  def index
    display @voyage
  end
  
  def new
    @jour = Jour.new
    display @voyage
  end

  def create
    @jour = Jour.new(params[:jour])
    @jour.voyage = @voyage
    if @jour.save
      redirect url(:admin_voyage_jours, :voyage_id => @voyage)
    else
      render :new
    end
  end

  def show
    @jour = Jour.get(params[:id])
    display @jour
  end 

  def delete
    @jour = Jour.get(params[:id])
    @jour.destroy
    redirect url(:admin_voyage_jours, :voyage_id => @voyage)
  end

  def edit
    @jour = Jour.get(params[:id])
    display @jour
  end

  def update
    @jour = Jour.get(params[:id])
    @jour.update_attributes(params[:jour])
    redirect url(:admin_voyage_jours, :voyage_id => @voyage)
  end


  private

  def get_voyage
    @voyage = Voyage.get(params[:voyage_id])
  end
end
