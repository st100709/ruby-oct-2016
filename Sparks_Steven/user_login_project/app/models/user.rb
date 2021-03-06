class User < ActiveRecord::Base
	validates :first_name, :last_name, :email_address, :age, presence:true
	validates :first_name, :last_name, length:{ minimum:2 }
	# validates :age, numericality:true 
	# validates_numericality_of :age, :greater_than => 9
	# validates_numericality_of :age, :less_than => 150
	validates_numericality_of :age, less_than: 150, greater_than: 9
end
