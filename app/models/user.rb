class User < ActiveRecord::Base
	validates :firstname,presence:{message:"this field is required"}
	validates :lastname,presence:{message:"this field is required"}
	validates :designation,presence:{message:"this field is required"}
	validates :origin,presence:{message:"this field is required"}
end
