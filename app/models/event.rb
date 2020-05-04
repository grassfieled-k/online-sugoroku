class Event < ApplicationRecord
  self.primary_key = 'event_id'
  before_create :generate_uuid

  def generate_uuid
    self.event_id = loop do
      random_uuid = SecureRandom.uuid
      break random_uuid unless self.class.exists?(event_id: random_uuid)
    end
  end
end
