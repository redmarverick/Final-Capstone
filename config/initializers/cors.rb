Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://car-booking-app-piym.onrender.com','http://127.0.0.1:3000/'
    resource(
      '*',
      headers: :any,
      methods: [:get, :patch, :put, :delete, :post, :options],
      credentials: true
    )
  end
end
