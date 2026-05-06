# Adds the {% blog_stats %} Liquid tag emitting site-wide counts.
# The walk over every post / music report / page runs once per build —
# results are memoized per Site and dropped on `:site, :after_reset` so
# `jekyll serve` rebuilds reflect new content without rescanning on every
# page that uses the tag.

require "liquid"

module Jekyll
  module BlogStats
    extend self

    IMG_RE   = /<img[\s>]/.freeze
    VIDEO_RE = /<video[\s>]/.freeze
    WORD_RE  = /\S+/.freeze

    def for_site(site)
      @cache ||= {}
      @cache[site.object_id] ||= compute(site)
    end

    def reset!
      @cache = {}
    end

    private

    def compute(site)
      posts = site.posts.docs
      music = site.collections["music"] ? site.collections["music"].docs : []
      pages = site.pages

      images = videos = words = 0
      (posts + music + pages).each do |doc|
        body = doc.content
        next if body.nil? || body.empty?
        images += body.scan(IMG_RE).size
        videos += body.scan(VIDEO_RE).size
        words  += body.scan(WORD_RE).size
      end

      {
        "article_count"      => posts.size,
        "music_report_count" => music.size,
        "page_count"         => pages.size,
        "total_count"        => posts.size + music.size + pages.size,
        "category_count"     => site.categories.size,
        "total_image_count"  => images,
        "total_video_count"  => videos,
        "total_word_count"   => words,
      }.freeze
    end
  end

  class BlogStatsTag < Liquid::Tag
    def render(context)
      s = BlogStats.for_site(context.registers[:site])
      <<~HTML
        <div>
          <h3>Site Statistics</h3>
          <div class="spliter">
            <div class="spliter-item">
              <ul>
                <li>#{s["article_count"]} articles</li>
                <li>#{s["music_report_count"]} music reports</li>
                <li>#{s["page_count"]} pages</li>
                <li>#{s["total_count"]} total</li>
                <li>#{s["category_count"]} categories</li>
              </ul>
            </div>
            <div class="spliter-item">
              <ul>
                <li>#{s["total_image_count"]} images</li>
                <li>#{s["total_video_count"]} videos</li>
                <li>#{s["total_word_count"]} words</li>
              </ul>
            </div>
          </div>
        </div>
      HTML
    end
  end
end

Jekyll::Hooks.register(:site, :after_reset) { Jekyll::BlogStats.reset! }

Liquid::Template.register_tag("blog_stats", Jekyll::BlogStatsTag)
