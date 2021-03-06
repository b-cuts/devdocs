module Docs
  class ReactNative
    class CleanHtmlFilter < Filter
      def call
        if root_page?
          css('#unsupported + div + center', '#unsupported + div', '#unsupported', '.toggler', 'center > img').remove
        end

        css('center > .button', 'p:contains("short survey")', 'iframe', '.embedded-simulator').remove

        css('h4.methodTitle').each do |node|
          node.name = 'h3'
        end

        doc
      end
    end
  end
end
