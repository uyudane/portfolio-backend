class User < ApplicationRecord
  has_many :roadmaps, dependent: :destroy
  has_one :profiles, dependent: :destroy

  def self.from_token_payload(payload)
    # binding.b
    find_by(sub: payload['sub']) || create!(sub: payload['sub'])
  end
end
