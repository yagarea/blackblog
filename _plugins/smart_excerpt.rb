require "nokogiri"

module Jekyll
  module SmartExcerpt
    def smart_excerpt(content, length = 200)
      return "" if content.nil?

      # Parse the HTML
      doc = Nokogiri::HTML.fragment(content)

      # Find every <div class="spliter">
      doc.css('div.spliter').each do |spliter|
        # Find the first .spliter-item inside
        first_item = spliter.at_css('div.spliter-item')
        if first_item
          # Replace the whole .spliter with the inner HTML of the first .spliter-item
          spliter.replace(first_item.inner_html)
        else
          # If no item exists, remove the spliter container
          spliter.remove
        end
      end

      # Return the modified HTML
      doc.to_html
    end
  end
end

Liquid::Template.register_filter(Jekyll::SmartExcerpt)

