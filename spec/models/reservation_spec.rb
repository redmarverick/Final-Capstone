require 'rails_helper'

RSpec.describe Reservation, type: :model do
  # Ensure that the Reservation model has a valid factory using FactoryBot
  it "has a valid factory" do
    expect(FactoryBot.build(:reservation)).to be_valid
  end

  # Validation tests
  it "is not valid without a city" do
    reservation = FactoryBot.build(:reservation, city: nil)
    expect(reservation).not_to be_valid
  end

  it "is not valid without a date" do
    reservation = FactoryBot.build(:reservation, date: nil)
    expect(reservation).not_to be_valid
  end

  # Association tests
  it "belongs to a user" do
    expect(Reservation.reflect_on_association(:user).macro).to eq(:belongs_to)
  end

  it "belongs to a car" do
    expect(Reservation.reflect_on_association(:car).macro).to eq(:belongs_to)
  end
end
