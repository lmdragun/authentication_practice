class User < ActiveRecord::Base
	has_many :comics

			before_create :create_remember_token
			before_save :normalize_fields

			validates :name,
				presence: true,
				length: { maximum: 50 }

			validates :email,
				presence: true,
				uniqueness: { case_sensitive: false },
				format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } #checks for basic email structure

			validates :password,
				length: { minimum: 8 }

			has_secure_password #calls method, expects password and password confirmation

		#Create a new remember token for a user
		def User.new_remember_token #could probably use Self.new...
			SecureRandom.urlsafe_base64 #giving access to bcrypt
		end

		#Hash a token
		def User.hash(token) #hashing token, so it expects the token
			Digest::SHA1.hexdigest(token.to_s) #the type of hash we want to use
		end

		private
		#Create new session token for the user
		def create_remember_token
			remember_token = User.hash(User.new_remember_token)
		end

		#Normalize fields for consistency:
		def normalize_fields
			self.email.downcase!
		end

	end
