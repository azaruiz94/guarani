class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def servicio
  end
  def distrito

  end
  def tipo_inmueble

  end
end
