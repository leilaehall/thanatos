class Delegate < ApplicationRecord
  before_create :confirmation_token
  belongs_to :user

  private

  def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end

end
