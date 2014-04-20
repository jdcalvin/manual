module ApplicationHelper

	def text_field(name, options = {}, html_options = {})
		super(name, options, html_options.merge(:class => 'form-control'))
	end

	def text_area(name, options = {}, html_options = {})
		super(name, options, html_options.merge(:class => 'form-control'))
	end

end
