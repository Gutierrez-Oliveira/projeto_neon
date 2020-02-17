Quando('clicar em perguntas') do
  $pergunta_pages.pergunta_page.btn_perguntas.click
  $pergunta_pages.pergunta_page.btn_cancelar.click
end

Então('validar o texto Quero cancelar minha conta') do
  page.execute_script "window.scrollBy(0,10000)"
  sleep 3
  expect($pergunta_pages.pergunta_page.titulo_autenticacao.text).to eql 'Quero cancelar minha conta. Como faço?'
end
