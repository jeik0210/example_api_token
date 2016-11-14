class Session < ApplicationRecord
  belongs_to :user
  before_create :generate_token

  private

  def generate_token
    begin
      self.token = SecureRandom.hex
    end  while Session.where(token: self.token).any?
  end
end
