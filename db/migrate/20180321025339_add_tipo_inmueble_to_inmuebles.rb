class AddTipoInmuebleToInmuebles < ActiveRecord::Migration[5.0]
  def change
    add_reference :inmuebles, :tipo_inmueble, foreign_key: true
  end
end
