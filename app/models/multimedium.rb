class Multimedium < ApplicationRecord

  validates :name, :about, presence: true

  has_many :album_media_joins, class_name: 'AlbumMediaJoin', dependent: :destroy, inverse_of: :multimedium
  has_many :album, through: :album_media_joins

  def name_abstract
    name.gsub('mujer ', '').capitalize
  end

end
