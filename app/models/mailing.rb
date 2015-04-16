class Mailing < ActiveRecord::Base

	validates_presence_of :subject
	validates_presence_of :month

	# scope :popular_courses, ->{:popular_courses}

	

end
