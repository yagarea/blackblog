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

Liquid::Template.register_tag("spliter", Jekyll::SpliterBlock)
