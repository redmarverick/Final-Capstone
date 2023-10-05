# Seed cars
cars = [
  ['Mercedes', '
    Mercedes is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 'https://i.imgur.com/h9Mo1AZ.png',500],
  ['McLaren P1', '
    McLaren P1 is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 'https://i.imgur.com/o1OMj06.png', 400],
  ['Bugatti Veyron P1.6', '
    Bugatti Veyron P1.6 is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 'https://i.imgur.com/ahilqIn.png', 300],
  ['Ferrari 599 SA Aperta', '
    Ferrari 599 SA Aperta is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 'https://i.imgur.com/L9XaS2r.png', 450]
]
# Create Admin user
admin = User.create(name: "javed", email: "js@gmail.com", password: "123456", password_confirmation: "123456", role: "admin")

cars.each do |car|
  Car.create(name: car[0], description: car[1], photo: car[2], price: car[3])
end

# Create reservations for the admin user
reservation1 = Reservation.create(user_id: admin.id, car_id: Car.find_by(name: 'Mercedes').id, date: '2024-09-22', city: 'Islamabad')
reservation2 = Reservation.create(user_id: admin.id, car_id: Car.find_by(name: 'McLaren P1').id, date: '2024-09-23', city: 'Karachi')
