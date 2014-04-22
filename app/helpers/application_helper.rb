module ApplicationHelper

	def text_field(name, options = {}, html_options = {})
		super(name, options, html_options.merge(:class => 'form-control'))
	end

	def text_area(name, options = {}, html_options = {})
		super(name, options, html_options.merge(:class => 'form-control'))
	end

	def inline_svg(path)
  file = File.open("app/assets/images/#{path}", "rb")
  raw file.read
end

end
