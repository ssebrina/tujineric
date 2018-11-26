class User < ApplicationRecord

	def self.authenticate(e,p)
		u = User.where(email: e).first
		if u == nil
			return false
		else
			

			if u.password == p
     			return true

			else
				return false
			end	
		end
	end
end