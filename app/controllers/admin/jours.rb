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
    if @jour.save
      @voyage.jours << @jour
      redirect url(:admin_voyage_jours, :voyage_id => @voyage)
    else
      render :new
    end
  end


  private

  def get_voyage
    @voyage = Voyage.get(params[:voyage_id])
  end
end
