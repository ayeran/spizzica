class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
#  has_and_belongs_to_many :orders
  before_save :setup_role

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :role_ids

  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end

  def isAdmin?
    return self.roles.map{|t| t.name}.include?("admin")
  end

  # Default role is "registered"
  def setup_role
    if self.role_ids.empty?
      self.role_ids =  Role.find_by_name("registered").id
    end
  end
end