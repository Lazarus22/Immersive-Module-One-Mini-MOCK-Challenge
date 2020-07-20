require "pry"
require "./author.rb"
require "./book.rb"

steven_king = Author.new ('steven_king')
jeff_vandermeer = Author.new ('jeff_vandermeer')
roger_zelazny = Author.new ('roger_zelazny')

steven_king.write_book('the_stand', 500000)
steven_king.write_book('the_dark_tower', 66000)
roger_zelazny.write_book('nine_princes_in_amber', 56000)

binding.pry
"@"