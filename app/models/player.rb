class Player < ApplicationRecord
  self.primary_key = 'player_id'
  before_create :generate_uuid

  def generate_uuid
    self.player_id = loop do
      random_uuid = SecureRandom.uuid
      break random_uuid unless self.class.exists?(player_id: random_uuid)
    end
  end
end
