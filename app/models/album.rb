class Album < ApplicationRecord

  validates :name, :description, presence: true

  has_many :album_media_joins, class_name: 'AlbumMediaJoin', dependent: :destroy, inverse_of: :album
  has_many :multimedium, through: :album_media_joins

end
