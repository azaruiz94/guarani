class AlojamientoController < ApplicationController
  def index
  	@inmuebles= Inmueble.where("servicio_id = ?", 3)
  end
end
