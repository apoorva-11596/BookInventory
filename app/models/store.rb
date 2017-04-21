class Store < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:authentication_keys => [:login]



  has_one :inventory
attr_accessor :login

    def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(store_name) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:store_name) 
        where(conditions.to_h).first
      end
    end

    def email_required?
    false
  end

  def email_changed?
    false
  end
end
