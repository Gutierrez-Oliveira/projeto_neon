Dado('que esteja no site') do
  $pejota_pages.pejota_page.load
end

Quando('clicar em pejota') do
  $pejota_pages.pejota_page.btn_pejota.click
  $new_window = window_opened_by {$pejota_pages.pejota_page.btn_abrirconta.click}
  within_window $new_window do  
  $pejota_pages.pejota_page.btn_lista.click
  $pejota_pages.pejota_page.btn_documentos.click
end
end

Então('quero validar o texto na página') do
  within_window $new_window do
  expect($pejota_pages.pejota_page.titulo_autenticacao.text).to eql 'Vamos precisar de uma foto sua e dos seus documentos.'
end
end
