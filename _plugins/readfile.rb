module Jekyll
	class ReadFileTag < Liquid::Tag

		def initialize(tag_name, path, tokens)
			super
			@path = path.gsub(/\s/, "")
		end

		def render(context)
			if @path[0]  == '/'
				full_path = @path
			else
				full_path = File.join(File.expand_path("../../", __FILE__), @path)
				print(full_path)
			end
			return File.read(full_path).gsub("\t", "")
		end
	end
end

Liquid::Template.register_tag("readfile", Jekyll::ReadFileTag)
