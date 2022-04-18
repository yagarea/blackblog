module Jekyll

  class DefinitionBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      return "<div class='definition-block'><p class='definition-label'>Definition</p>#{md_converter.convert(text)}</div>"
    end
  end

  class ProofBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      return "<div class='proof-block'><p class='proof-label'>Proof</p>#{md_converter.convert(text)}</div>"
    end
  end


  class TheoremBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      return "<div class='theorem-block'><p class='theorem-label'>Theorem</p>#{md_converter.convert(text)}</div>"
    end
  end

  class LemmaBlock < Liquid::Block
    def render(context)
      text = super
      md_converter = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown)
      return "<div class='lemma-block'><p class='lemma-label'>Lemma</p>#{md_converter.convert(text)}</div>"
    end
  end
end

Liquid::Template.register_tag("def", Jekyll::DefinitionBlock)
Liquid::Template.register_tag("proof", Jekyll::ProofBlock)
Liquid::Template.register_tag("theorem", Jekyll::TheoremBlock)
Liquid::Template.register_tag("lemma", Jekyll::LemmaBlock)
