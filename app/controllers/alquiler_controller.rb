class AlquilerController < ApplicationController
  def index
  	@inmuebles= Inmueble.where("servicio_id = ?", 2).paginate(:per_page => 21, :page => params[:page])
  end
  
end
