class Inmueble < ApplicationRecord
	filterrific(available_filters: [:sorted_by_servicio, :sorted_by_tipo, :sorted_by_distrito])
end
