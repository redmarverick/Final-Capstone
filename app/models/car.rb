class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, length: { maximum: 255 } # Example: Limiting name to 255 characters
  validates :description, presence: true, length: { maximum: 1000 } # Example: Limiting description to 1000 characters
  validates :photo, presence: true, length: { maximum: 255 } # Example: Limiting photo URL to 255 characters
  validates :price, presence: true

  private

  def valid_photo_url
    return if photo.blank?  # Skip the validation if photo is blank

    unless valid_url?(photo)
      errors.add(:photo, 'must be a valid URL')
    end
  end

  def valid_url?(url)
    uri = URI.parse(url)
    uri.is_a?(URI::HTTP) || uri.is_a?(URI::HTTPS)
  rescue URI::InvalidURIError
    false
  end
end

