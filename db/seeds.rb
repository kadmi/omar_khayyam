# ruby encoding: utf-8
#

rubaiy = ''

file = File.open(Rails.root.join('lib', 'seeds', 'omar_h_clean.txt')).read

file.each_line do |str|
  if str == "* * *\n"
    Rubaiyat.create(text: rubaiy)
    rubaiy = ''
  else
    rubaiy += str + '<br>'
  end
end