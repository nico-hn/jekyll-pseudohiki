# frozen_string_literal: true

RSpec.describe Jekyll::PseudoHiki::Converter do
  describe '.convert' do
    it 'is expected to convert Hiki content into HTML' do
      hiki_content = <<~HIKI
        !Title
        Paragraph
      HIKI

      html = <<~HTML
        <section class="h1">
        <h1>Title
        </h1>
        <p>
        Paragraph
        </p>
        <!-- end of h1 -->
        </section>
      HTML

      conv = Jekyll::PseudoHikiConverter.new

      expect(conv.convert(hiki_content)).to eql(html)
    end
  end
end
