class VentaController < ApplicationController
  def index
  	@inmuebles= Inmueble.where("servicio_id = ?", 1).paginate(:per_page => 21, :page => params[:page])
  end
end
