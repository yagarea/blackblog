count = 0

Jekyll::Hooks.register :documents, :post_render do | doc |
	uncompressed_line_count = doc.output.lines.count
	doc.output = doc.output.gsub(Regexp.new(/>\n{2,}<\b/), ">\n<")
	count += uncompressed_line_count - doc.output.lines.count
end

Jekyll::Hooks.register :site, :after_reset do
	count = 0
end

Jekyll::Hooks.register :site, :post_write do
	print("       Compression: " + count.to_s + " white spaces reduced\n")
end