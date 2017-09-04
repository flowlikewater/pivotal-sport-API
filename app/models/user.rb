class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  before_save -> { skip_confirmation! }
  # internal server error if include confirmable - two ways to bypass error: 1. add before save -> {skip_confirmation!}, 2. remove confirmable from devise :confirmable
  has_many :events
  has_one :user_detail, dependent: :destroy

end
