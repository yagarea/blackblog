require 'active_support/core_ext/string/inflections'

module Jekyll

  class BandsBlock < Liquid::Block
    def render(context)
      text = super
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
        event = band[3].gsub(":","<br/>")
        logo = band[0].downcase.parameterize + ".png"
        tags = band[4] == nil ? "" : band[4]

        output += %Q[
<thead>
  <tr>
    <td class="band-logo-td" rowspan="3">
      <img class="band-logo" src="/assets/img/bands/#{logo}" alt="#{name}"/>
    </td>
    <td colspan="2">
      <h2>#{name}</h2>
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
</thead>]
      end
      return %Q[<table class="bands-table">] + output + "</table>"
    end
  end
end

Liquid::Template.register_tag("bands", Jekyll::BandsBlock)
