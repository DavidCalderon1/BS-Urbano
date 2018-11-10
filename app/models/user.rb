class User < ApplicationRecord
	rolify
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	after_create :assign_default_role
	
	has_many :suggestions

	def assign_default_role
		if self.id == 1
			add_role(:admin)
		else
			add_role(:normal)
		end
	end
end
