class CreateInmuebles < ActiveRecord::Migration[5.0]
  def change
    create_table :inmuebles do |t|
      t.string :nombre
      t.string :direccion
      t.string :codigo

      t.timestamps
    end
  end
end
