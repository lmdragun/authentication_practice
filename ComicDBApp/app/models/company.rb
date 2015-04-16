class Company < ActiveRecord::Base
	has_many :comics
	validates :name, presence: true

	# attr_accessor :found_company, :found_id
	#
	# def find_company
	# 	@found_company = Company.find( :company_find )
	# end
	#
	# def find_id
	# 	@found_id = @found_company.id
	# end

end
