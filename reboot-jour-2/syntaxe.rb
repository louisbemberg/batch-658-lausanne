# ********************************
# HOW TO Scrape un fichier HTML téléchargé:
# ********************************

# 1. télécharger le fichier avec le terminal avec une commande curl
'$ curl "https://www.etsy.com/search?q=THE_ARTICLE_YOUR_ARE_LOOKING_FOR" > results.html'
# 2. require la gem nokogiri (installer si nécessaire, $ gem install nokogiri)
require 'nokogiri'
# 3. dire à ruby ou se trouve le fichier (path)
filepath = 'results.html'
# 4. ouvrir le fichier
html_content = File.open(filepath)
# 5. transformer le fichier en objet Nokogiri (connection entre HTML et Ruby)
nokogiri_doc = Nokogiri::HTML(html_content)
# 6. effectuer un search des éléments qu'on veut via CSS
nokogiri_doc.search('.card h2').each do |element|
  # 7. obtenir le contenu des éléments
  element.text.strip
end

# ********************************
# HOW TO scrape une vraie page web:
# ********************************

# 1.require open-uri pour atteindre le site, nokogiri pour l'interpréter
require 'open-uri'
require 'nokogiri'

# 2. déterminer l'URL qu'on veut scrape:
url = "https://www.etsy.com/search?q=jeans"

# 3. on ouvre l'URL grace à uri, et on lit ce qu'il y a dedans
html_content = URI.open("https://www.etsy.com/search?q=#{article}").read
# 4. On construit un objet nokogiri pour que ruby le comprenne
nokogiri_doc = Nokogiri::HTML(html_content)

# 5. effectuer un search des éléments qu'on veut via CSS
nokogiri_doc.search('.classname tagname #idname').each do |element|
  # 6. obtenir le contenu des éléments
  element.text.strip
end

# ********************************
# HOW TO load(parse) un fichier CSV (importer des données)
# ********************************

# 1. importer le module csv de ruby
require 'csv'
# 2. Spécifier certaines options de CSV. on ne les change presque jamais
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# 3. dire à ruby ou se trouve le fichier CSV
filepath = 'gifts.csv'

# 4. itérer sur le fichier (= le lire ligne par ligne)
CSV.foreach(filepath, csv_options) do |row|
  # on peut se servir de row pour faire ce qu'on veut :)
  # ne pas oublier de faire les conversion nécessaires
  puts row
end


# ********************************
# HOW TO store un fichier CSV (exporter/stocker des données)
# ********************************
# 1. importer le module csv de ruby
require 'csv'

# 2. Spécifier certaines options de CSV. on ne les change presque jamais
csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

# 3. dire à ruby ou se trouve le fichier CSV
filepath = 'gifts.csv'

# 4. on ouvre le fichier pour y écrire dedans, ligne par ligne. les anciennes données sont écrasées.
CSV.open(filepath, 'wb', csv_options) do |csv|
  # on ajoute le premier row de headers
  csv << ['name', 'price', 'bought']
  # on ajoute autant de rows qu'on veut. Ils seront transformés en string
  csv << ['surfboard', 55, true]
end
