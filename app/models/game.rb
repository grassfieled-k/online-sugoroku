class Game < ApplicationRecord
  self.primary_key = 'game_id'
  before_create :generate_uuid

  def generate_uuid
    self.game_id = loop do
      random_uuid = SecureRandom.uuid
      break random_uuid unless self.class.exists?(game_id: random_uuid)
    end
  end
end
