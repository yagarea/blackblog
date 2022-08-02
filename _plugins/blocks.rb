module Jekyll

  class DefinitionBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      return "<div class='definition-block'><p class='definition-label'><b>Definition</b></p>#{md_converter.convert(text)}</div>"
    end
  end

  class ProofBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      return "<div class='proof-block'><p class='proof-label'><b>Proof</b></p>#{md_converter.convert(text)}</div>"
    end
  end


  class TheoremBlock < Liquid::Block
    def render(context)
      text = super
      parsed_text = text.split("---")
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)

      if parsed_text.size() == 1
       return "<div class='theorem-block'><p class='theorem-label'><b>Theorem</b></p>#{md_converter.convert(text)}</div>"
      end
      return "<div class='theorem-block'><p class='theorem-label'><b>Theorem</b></p>#{md_converter.convert(parsed_text[0])}" \
        "<p class='proof-label'><b>Proof</b></p>#{md_converter.convert(parsed_text[1])}</div>"
    end
  end

  class LemmaBlock < Liquid::Block
    def render(context)
      text = super
      parsed_text = text.split("---")
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)

      if parsed_text.size() == 1
        return "<div class='lemma-block'><p class='lemma-label'>Lemma</p>#{md_converter.convert(text)}</div>"
      end
      return "<div class='lemma-block'><p class='lemma-label'><b>Lemma</b></p>#{md_converter.convert(parsed_text[0])}" \
        "<p class='proof-label'><b>Proof</b></p>#{md_converter.convert(parsed_text[1])}</div>"

    end
  end

  class ClaimBlock < Liquid::Block
    def render(context)
      text = super
      parsed_text = text.split("---")
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)

      if parsed_text.size() == 1
        return "<div class='lemma-block'><p class='lemma-label'>Claim</p>#{md_converter.convert(text)}</div>"
      end
      return "<div class='lemma-block'><p class='lemma-label'><b>Claim</b></p>#{md_converter.convert(parsed_text[0])}" \
        "<p class='proof-label'><b>Proof</b></p>#{md_converter.convert(parsed_text[1])}</div>"

    end
  end
end

Liquid::Template.register_tag("def", Jekyll::DefinitionBlock)
Liquid::Template.register_tag("proof", Jekyll::ProofBlock)
Liquid::Template.register_tag("theorem", Jekyll::TheoremBlock)
Liquid::Template.register_tag("lemma", Jekyll::LemmaBlock)
Liquid::Template.register_tag("claim", Jekyll::ClaimBlock)
