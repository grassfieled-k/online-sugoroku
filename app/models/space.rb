class Space < ApplicationRecord
  self.primary_key = 'space_id'
  before_create :generate_uuid

  def generate_uuid
    self.space_id = loop do
      random_uuid = SecureRandom.uuid
      break random_uuid unless self.class.exists?(space_id: random_uuid)
    end
  end
end
