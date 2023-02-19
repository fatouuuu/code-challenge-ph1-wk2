# require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# authors
author1 = Author.new("John Doe")
author2 = Author.new("Jane Doe")

# magazines
magazine1 = Magazine.new("Vogue", "Fashion")
magazine2 = Magazine.new("Wired", "Technology")
magazine3 = Magazine.new("National Geographic", "Science")

# articles
article1 = Article.new(author1, magazine1, "Fashion Trends for Spring")
article2 = Article.new(author1, magazine2, "The Future of Robotics")
article3 = Article.new(author2, magazine2, "The Ethics of Artificial Intelligence")
article4 = Article.new(author2, magazine3, "New Discoveries in Quantum Physics")
article5 = Article.new(author1, magazine1, "Summer Fashion Essentials")

# test methods - use puts statement to print out the results of the methods
puts Author.all 
puts Magazine.all
puts Article.all 

puts author1.articles
puts author1.magazines 
puts author1.topic_areas

puts magazine2.article_titles 
puts magazine2.contributing_authors

puts Magazine.find_by_name("Vogue") 

author1.add_article(magazine1, "The Value of Persistence")
puts author1.articles
puts magazine1.contributing_authors
