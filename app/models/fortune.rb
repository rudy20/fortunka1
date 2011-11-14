class Fortune < ActiveRecord::Base
	validates :quotation, :presence => true
	validates :source,    :presence => true
	
	has_many :comments, :dependent => :destroy
	has_many :tags
	paginates_per 5
	
       accepts_nested_attributes_for :tags, :allow_destroy => :true,
       :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
