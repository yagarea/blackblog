require 'active_support/core_ext/string/inflections'

module Jekyll

  class AlbumWallBlock < Liquid::Block
    def render(context)
      text = super
      parsed_text = text.split("\n")
      output = ""
      for album_line in parsed_text
        album_line.strip!
        if album_line == ""
          next
        end
        album = album_line.split("|")
        album.map { |string| string.strip! }

        band = album[0]
        title = album[1]
        cover = band.downcase.parameterize + "-" + title.downcase.parameterize + ".jpg"
        year = album[2] || "????"
        link = album[3] || "#"
        tags = album[4] || ""

        output += %Q[
        <div class="album-display">
          <img src="/assets/img/albums/#{cover}" alt="#{band} - #{title}" />
          <a href="#{link}">
              <b>#{band}</b> - #{title} (#{year})
          </a>
        </div>
        ] + "\n"
      end
      return %Q[<div class="album-wall">] + output + "</div>"
    end
  end
end

Liquid::Template.register_tag("album_wall", Jekyll::AlbumWallBlock)
