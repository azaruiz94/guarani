class AlojamientoController < ApplicationController
  def index
  	@inmuebles= Inmueble.where("servicio_id = ?", 3).paginate(:per_page => 21, :page => params[:page])
  end
end
