module Jekyll
  class ButtonMenuTag < Liquid::Block
    Syntax = /(\s+col=(\d+))?/

    def initialize(tag_name, markup, tokens)
      super
      if markup =~ Syntax
        @cols = $2 ? $2.to_i : 3
      else
        @cols = 3
      end
    end

    def render(context)
      content = super.strip
      rows = content.split("\n").map(&:strip).reject(&:empty?)
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)

      html = %Q[<div class="button-menu">]

      rows.each do |row|
        parts = row.split("|").map(&:strip)
        label, icon, link = parts
        label = md_converter.convert(label).gsub("<p>","").gsub("</p>","")

        html << %Q[<a href="#{link}">]
        html << %Q[<svg aria-hidden="true"><use xlink:href="{{- '/assets/fontawesome/icons.svg' | relative_url }}##{icon}"></use></svg>]
        html << %Q[<div class="button-menu-label">#{label}</div>]
        html << %Q[</a>]
      end

      html << "</div>"
      html = Liquid::Template.parse(html).render(context)
      return html
    end
  end
end

Liquid::Template.register_tag("buttonmenu", Jekyll::ButtonMenuTag)

