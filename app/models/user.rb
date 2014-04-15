class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products, dependent: :destroy
  validate :name, presence: true, uniqueness: true

  validates_format_of :mobile, with: /\A[1-9][0-9]{9}\Z/, allow_blank: true

  def admin?
    is_admin
  end
end
