class VentaController < ApplicationController
  def index
  	@inmuebles= Inmueble.where("servicio_id = ?", 1)
  end
end
