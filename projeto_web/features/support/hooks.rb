Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].sort.each { |file| require file }

$pergunta_pages = Pages::ExemploPage::Exemplo.new
$pejota_pages = Pages::ExemploPage::Exemplo.new

World(Commons)
Before do
    Capybara.page.driver.browser.manage.window.maximize
end