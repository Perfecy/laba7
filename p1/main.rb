def files(name)
  h = File.open('H.txt', 'w')
  File.read(name).split('a').first

  h.close
rescue StandardError
  puts 'Error opening files'
end
