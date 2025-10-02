require "nokogiri"

module Jekyll
  module SmartExcerpt
    # content: the post content
    # length: maximum number of words to keep
    def smart_excerpt(content, length = 200)
      return "" if content.nil?

      # Parse as fragment so we don't get <html><body> wrappers
      doc = Nokogiri::HTML.fragment(content)

      # Remove all div.spliter except the first one
      spliter_divs = doc.css('div.spliter')
      spliter_divs[1..-1].each(&:remove) if spliter_divs.size > 1

      # Process each <div class="spliter">
      doc.css('div.spliter').each do |spliter|
        first_item = spliter.at_css('div.spliter-item')

        if first_item
          # Replace the entire splitter with the inner HTML of its first item
          spliter.replace(first_item.inner_html)
        else
          spliter.remove
        end
      end


      video_display_divs = doc.css("div.video-display")
      video_display_divs[1..-1].each(&:remove) if video_display_divs.size > 1

      # shorten all tables to first 3 rows
      doc.css("table").each do |table|
        rows = table.css("tr")
        rows[3..-1].each(&:remove) if rows.size > 3
      end


      # Get HTML after cleanup
      final_html = doc.to_html
      final_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::SmartExcerpt)
