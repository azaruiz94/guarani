class AddServicioToInmuebles < ActiveRecord::Migration[5.0]
  def change
    add_reference :inmuebles, :servicio, foreign_key: true
  end
end
