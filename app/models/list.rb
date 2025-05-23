class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true

  def image
    if photo.attached?
      photo.key
    else
      "https://res.cloudinary.com/dlc4k9toh/image/upload/v1748009786/interstellar_bol1ur.jpg"
    end
  end

end


