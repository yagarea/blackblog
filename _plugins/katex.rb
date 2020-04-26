require 'execjs'

PATH_TO_JS = "./assets/katex/katex.min.js"
katex_modul = ExecJS.compile(open(PATH_TO_JS).read)
count = 0

global_macros = Hash.new

for macro_definition in Jekyll.configuration({})['latex-macros']
	global_macros[macro_definition[0]] = macro_definition[1]
end

Jekyll::Hooks.register :documents, :post_render do |doc, payload |
	if doc.data["latex"]
		rendered_content = doc.output
		rendered_content = rendered_content.gsub("% <![CDATA[\n", "")
		rendered_content = rendered_content.gsub("%]]>", "")

		display_latex = rendered_content.scan(Regexp.new(/<script type="math\/tex; mode=display">(.*?)<\/script>/)).flatten
		count += display_latex.size
		for dl in display_latex
			rendered_content = rendered_content.gsub('<script type="math/tex; mode=display">' + dl + '</script>',
				'<div class="equation" style="font-size: 130%">' +
				katex_modul.call("katex.renderToString", dl, {displayMode: true, macros: global_macros}) +
				'</div>')
		end

		inline_latex = rendered_content.scan(Regexp.new(/<script type="math\/tex">(.*?)<\/script>/)).flatten
		count += inline_latex.size
		for il in inline_latex
			rendered_content = rendered_content.gsub('<script type="math/tex">' + il + '</script>',
			'<span class="inline-equation">' +
			katex_modul.call("katex.renderToString", il, {displayMode: false, macros: global_macros}) +
			'</span>')
		end

		doc.output = rendered_content
	end
end

Jekyll::Hooks.register :site, :after_reset do
	count = 0
end

Jekyll::Hooks.register :site, :post_write do
	print("    Rendered LaTex: " + count.to_s + "\n")
end
