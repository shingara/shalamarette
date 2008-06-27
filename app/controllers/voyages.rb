class Voyages < Application
  # provides :xml, :yaml, :js

  def index
    @voyages = Voyage.all
    display @voyages
  end

  def show
    @voyage = Voyage.get(params[:id])
    raise NotFound unless @voyage
    display @voyage
  end
end
