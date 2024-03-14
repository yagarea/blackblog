require 'active_support/core_ext/string/inflections'

module Jekyll

  class SpliterBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)

      parsed_text = text.split("---")
      output = "<div class=\"spliter\">\n"
      for i in parsed_text do
        output += "<div class=\"spliter-item\">\n"
        output += md_converter.convert(i)
        output += "</div>\n"
      end
      return output + "</div>\n"
    end
  end
end

module Jekyll

  class Details < Liquid::Block

    def initialize(tag_name, summary, tokens)
      super
      @summary = summary.to_s.gsub(/^("|')|("|')$/, '').strip
    end

    def render(context)
      @md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      @content = super.to_s
      %Q[<details>
          <summary>
            #{@md_converter.convert(@summary).to_s.gsub(/^<p>/, '').gsub(/<\/p>$/, '')}
          </summary>
          #{@md_converter.convert(@content)}
        </details>
        ]
    end
  end

end

Liquid::Template.register_tag("spliter", Jekyll::SpliterBlock)
Liquid::Template.register_tag("details", Jekyll::Details)

