module ApplicationHelper

	def text_field(name, options = {}, html_options = {})
		super(name, options, html_options.merge(:class => 'form-control'))
	end

	def text_area(name, options = {}, html_options = {})
		super(name, options, html_options.merge(:rel => 'tinymce', :class => 'tinymce', :class =>'form-control'))
	end

	def inline_svg(path)
  	file = File.open("app/assets/images/#{path}", "rb")
  	raw file.read
	end

	def alert_icons
		hash = Hash.new(0)
		hash[:success] = "ok-sign"
		hash[:info] = "info-sign"
		hash[:warning] = "exclamation-sign"
		hash[:danger] = "exclamation-sign"
		return hash
	end

end
