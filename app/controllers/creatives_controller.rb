class CreativesController < ApplicationController
  layout "creative"

  def index
  	@@inmuebles = Inmueble.all
  	@servicios= Servicio.all
  	@distritos= Distrito.all
  	@tipos_inmuebles= TipoInmueble.all
  	@filterrific = initialize_filterrific(
    Inmueble,
    params[:filterrific],
    select_options: {

    },
     persistence_id: false
    ) or return
    @inmuebles = @filterrific.find.page(params[:page]).paginate(:per_page => 5, :page => params[:page])
    respond_to do |format|
      format.html
      format.json
    end
  end
end
