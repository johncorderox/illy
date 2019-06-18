class User < ApplicationRecord

  has_secure_password

  has_one_attached :image

  validates_uniqueness_of :username, :email

  # After the user creates an account, default coulmn register to N
  after_create :register_in_process

  def complete_registration
    self.registered == 'Y'
  end


  private
    def register_in_process
      self.registered == 'N'
    end

end
