class AddDepartamentoToDistritos < ActiveRecord::Migration[5.0]
  def change
    add_reference :distritos, :departamento, foreign_key: true
  end
end