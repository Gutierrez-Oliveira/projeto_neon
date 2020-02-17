Dir[File.join(File.dirname(__FILE__), 'pages/*.rb')].each { |file| require file }

module Pages
  module ExemploPage
    class Exemplo
      def pergunta_page
        Pages::PerguntaPage.new
      end
      def pejota_page
        Pages::PejotaPage.new
      end
    end
  end
end
