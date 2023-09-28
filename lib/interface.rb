require_relative "kapibara"

keywords = []

puts "Type your first keyword"
keyword = gets.chomp
keywords << keyword

puts "Type your second keyword"
keyword = gets.chomp
keywords << keyword


kapibaraSearchTool = SearchTool.new(keywords)
text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse congue imperdiet sem, nec mollis sapien eleifend sit amet. Nunc nec aliquam nunc. Morbi volutpat turpis vitae mauris iaculis aliquet. Sed varius libero quis mauris viverra, eget fermentum massa condimentum. Donec lorem urna, hendrerit id condimentum non, sodales a enim. Integer finibus ultricies semper. Curabitur vestibulum purus ac lectus tempus, venenatis commodo tellus ultricies. Sed lobortis volutpat sollicitudin.'
result = kapibaraSearchTool.search(text)

puts result

