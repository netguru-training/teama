module ApplicationHelper

	def page(path)
		'active' if current_page?(path)
	end

end
