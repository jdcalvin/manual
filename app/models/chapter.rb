class Chapter < ActiveRecord::Base
	belongs_to :section
	has_many :questions, dependent: :destroy
	accepts_nested_attributes_for :questions, allow_destroy: true,
		reject_if: lambda {|x| x[:question].blank? }
end
