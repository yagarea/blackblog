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
      content = [
        ["Articles",      s["article_count"]],
        ["Music reports", s["music_report_count"]],
        ["Pages",         s["page_count"]],
        ["Total",         s["total_count"]],
        ["Categories",    s["category_count"]],
      ]
      media = [
        ["Images", s["total_image_count"]],
        ["Videos", s["total_video_count"]],
        ["Words",  s["total_word_count"]],
      ]

      <<~HTML
        <section class="blog-stats">
          #{render_group("Content", content)}
          #{render_group("Media", media)}
        </section>
      HTML
    end

    private

    def render_group(heading, rows)
      items = rows.map { |label, value| render_stat(label, value) }.join
      %(<div class="blog-stats-group">) \
        + %(<h4 class="blog-stats-heading">#{heading}</h4>) \
        + %(<dl class="blog-stats-grid">#{items}</dl>) \
        + %(</div>)
    end

    def render_stat(label, value)
      %(<div class="blog-stat">) \
        + %(<dt class="blog-stat-label">#{label}</dt>) \
        + %(<dd class="blog-stat-value">#{format_number(value)}</dd>) \
        + %(</div>)
    end

    def format_number(n)
      n.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, "\\1 ")
    end
  end
end

Jekyll::Hooks.register(:site, :after_reset) { Jekyll::BlogStats.reset! }

Liquid::Template.register_tag("blog_stats", Jekyll::BlogStatsTag)
