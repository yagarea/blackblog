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
        link = album[3] ? %q[<a href="] + album[3] + %q[">Listen to this album</a>] : ""
        tags = album[4] || ""

        output += %Q[
        <div class="album-display">
          <img src="/assets/img/albums/#{cover}" alt="#{band} - #{title}">
          <span>
            <strong>#{band}</strong>
            <br>
            #{title} (#{year})
          </span>
          #{link}
        </div>
        ] + "\n"
      end
      return %Q[<div class="album-wall">] + output + "</div>"
    end
  end
end

Liquid::Template.register_tag("album_wall", Jekyll::AlbumWallBlock)
