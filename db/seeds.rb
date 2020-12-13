# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  name: 'João Marcos',
  email: ENV['DEFAULT_ADMIN_EMAIL'],
  password: ENV['DEFAULT_ADMIN_PASSWORD'],
  admin: true
)

News.create(
  title: 'Brasil tem média móvel de casos de Covid acima de 40 mil pelo 11º dia',
  subtitle: 'País tem 181.419 óbitos e 6.901.990 diagnósticos de Covid-19 registrados desde o começo da pandemia, segundo levantamento do consórcio de imprensa.',
  content: 'O consórcio de veículos de imprensa divulgou novo levantamento da situação da pandemia de coronavírus no Brasil a partir de dados das secretarias estaduais de Saúde, consolidados às 20h deste domingo (13).

  O país registrou 276 mortes pela Covid-19 nas últimas 24 horas, chegando ao total de 181.419 óbitos desde o começo da pandemia. Com isso, a média móvel de mortes no Brasil nos últimos 7 dias foi de 637. A variação foi de +23% em comparação à média de 14 dias atrás, indicando tendência de alta nos óbitos pela doença.

  Em casos confirmados, desde o começo da pandemia 6.901.990 brasileiros já tiveram ou têm o novo coronavírus, com 21.395 desses confirmados no último dia. A média móvel nos últimos 7 dias foi de 42.721 novos diagnósticos por dia. Isso representa uma variação de +20% em relação aos casos registrados em duas semanas, o que indica tendência de alta também nos diagnósticos.

  É o 11º dia que essa média aparece acima da casa dos 40 mil. No primeiro pico da pandemia, entre o final de julho e o meio de agosto, o país chegou a registrar 27 dias consecutivos com a média móvel de diagnósticos acima de 40 mil. A maior marca registrada ocorreu em 27 de julho, com média de 46.393.'
)
