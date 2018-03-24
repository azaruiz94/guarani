json.extract! inmueble, :id, :nombre, :direccion, :codigo, :created_at, :updated_at
json.url inmueble_url(inmueble, format: :json)
