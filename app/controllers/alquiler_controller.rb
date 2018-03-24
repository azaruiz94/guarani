class AlquilerController < ApplicationController
  def index
  	@inmuebles= Inmueble.where("servicio_id = ?", 2)
  end
end
