require 'active_support/core_ext/string/inflections'

module Jekyll

  class BandsBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      parsed_text = text.split("\n")
      output = ""
      for band_line in parsed_text
        band_line.strip!
        if band_line == ""
          next
        end
        band = band_line.split("|")
        band.map { |string| string.strip! }

        name = band[0]
        genre = band[1]
        country = band[2]
        event =  md_converter.convert(band[3].gsub(":","<br/>")).gsub("<p>","").gsub("</p>","")
        normalized_name = band[0].downcase.parameterize
        logo = normalized_name + ".png"
        tags = band[4] == nil ? "" : band[4]

        replacements = {
          "♥" => "Band is my personal favorite and has special place in my heart",
          "★" => "Band’s performance was incredible",
          "⛬" => "This band has huge impact on music and deserve status of a legend"
        }

        replacements.each do |symbol, replacement|
          tags.gsub!(symbol, %Q[<abbr title="#{replacement}">#{symbol}</abbr>])
        end

        output = %Q[
<thead>
  <tr>
    <td class="band-logo-td" rowspan="3">
      <img class="band-logo" src="/assets/img/bands/#{logo}" alt="#{name}"/>
    </td>
    <td colspan="2">
      <h2 id="#{normalized_name}">#{name}</h2>
    </td>
  </tr>
  <tr>
    <td>#{genre}</td>
    <td>#{country}</td>
  </tr>
  <tr>
    <td>#{event}</td>
    <td>#{tags}</td>
  </tr>
</thead>] + output
      end
      return %Q[<table class="bands-table">] + output + "</table>"
    end
  end
end

Liquid::Template.register_tag("bands", Jekyll::BandsBlock)
