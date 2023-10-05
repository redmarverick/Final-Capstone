Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://car-booking-app-piym.onrender.com','http://localhost:3000'
    resource(
      '*',
      headers: :any,
      methods: [:get, :patch, :put, :delete, :post, :options],
      credentials: true
    )
  end
end
