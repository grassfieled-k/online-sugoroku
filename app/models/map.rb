class Map < ApplicationRecord
  self.primary_key = 'map_id'
  before_create :generate_uuid

  def generate_uuid
    self.map_id = loop do
      random_uuid = SecureRandom.uuid
      break random_uuid unless self.class.exists?(map_id: random_uuid)
    end
  end
end
