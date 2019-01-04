def files(name)
  h = File.open('H.txt', 'w')
  File.open(name, 'r').each_char do |l|
    break if l=='a'
    h.write l
  end

  h.close
rescue StandardError
  puts 'Error opening files'
end
