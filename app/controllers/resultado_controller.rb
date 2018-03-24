class ResultadoController < ApplicationController
  def index
  	@resultados= Inmueble.where("servicio_id = ? and tipo_inmueble_id= ? and distrito_id = ?", params[:servicio_id], params[:tipo_inmueble_id], params[:distrito_id])
  	puts @resultados
  end

  def get_results
  	@resultados= Inmueble.where("servicio_id = ? and tipo_inmueble_id= ? and distrito_id = ?", params[:servicio_id], params[:tipo_inmueble_id], params[:distrito_id])
  	respond_to do |format|
  		format.json {render json: @resultados}
  		format.html
    end
  end

end
