def files(name)
  File.open('H.txt', 'w') do |h|
    h.write File.read(name).split('a').first
  end
rescue StandardError
  puts 'Error opening files'
end
