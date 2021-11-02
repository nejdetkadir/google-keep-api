class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  # custom callbacks
  after_initialize :set_default_role, :if => :new_record?

  # enumerables
  enum role: [:user, :admin]

  # associations
  has_many :colors, dependent: :destroy
  has_many :labels, dependent: :destroy

  def set_default_role
    self.role ||= :user
  end
end
