module GoalsHelper
	def format_month_year month, year
		"#{'%.2d' % month}/#{year}"
	end
end
