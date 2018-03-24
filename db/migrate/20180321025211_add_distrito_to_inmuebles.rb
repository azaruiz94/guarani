class AddDistritoToInmuebles < ActiveRecord::Migration[5.0]
  def change
    add_reference :inmuebles, :distrito, foreign_key: true
  end
end
