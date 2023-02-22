# Phase 3 Code Challenge: Articles - Without AR

This is a code challenge for building a simple Ruby application with object-oriented design principles. The application is a magazine system that contains articles, authors, and magazines. This perfectly demonstrates object-oriented design principles in action. It provides a basic framework for a magazine system that can be extended to include more features and functionality as needed.

## Models

There are three models in this application: Author, Article, and Magazine. The relationships between the models are as follows:

    - An author has many articles
    - A magazine has many articles
    - Articles belong to both author and magazine
    - Author <-> Magazine is a many-to-many relationship

## Functionality

The following methods are available in the application:

### Author

    - Author.new(name): Creates a new author instance with the given name.
    - author.name: Returns the name of the author.
    - author.articles: Returns an array of article instances the author has written.
    - author.magazines: Returns a unique array of magazine instances for which the author has contributed to.
    - author.add_article(magazine, title): Given a magazine (as a Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
    - author.topic_areas: Returns a unique array of strings with the categories of the magazines the author has contributed to.

### Magazine

    - Magazine.new(name, category): Creates a new magazine instance with the given name and category.
    - magazine.name: Returns the name of the magazine.
    - magazine.category: Returns the category of the magazine.
    - magazine.articles: Returns an array of article instances associated with the magazine.
    - magazine.contributors: Returns an array of author instances who have written for this magazine.
    - Magazine.all: Returns an array of all Magazine instances.
    - Magazine.find_by_name(name): Given a string of magazine name, this method returns the first magazine object that matches.
    - magazine.article_titles: Returns an array string of the titles of all articles written for that magazine.
    - magazine.contributing_authors: Returns an array of authors who have written more than 2 articles for the magazine.

### Article

    - Article.new(author, magazine, title): Creates a new article instance with the given author, magazine, and title.
    - article.author: Returns the author instance associated with the article.
    - article.magazine: Returns the magazine instance associated with the article.
    - article.title: Returns the title of the article.
    - Article.all: Returns an array of all Article instances.

### Console

To test the functionality of the application, you can run `ruby bin/run.rb` and create instances of the classes and call their methods to test their functionality.
(I have already created some instances and invoked them)

### Setup

- Clone the repository to your local machine
- Install the required dependencies by running `bundle install` within the code challenge directory
- Run `ruby bin/run.rb` to test the functionality of the classes

## Conclusion

This code challenge provided an opportunity to practice building models and establishing associations between them. The challenge covered a variety of concepts, including classes and instances, class and instance methods, variable scope, arrays, enumerables, many-to-many relationships, object relationship methods, and aggregate methods. Through this exercise, I gained experience in writing and testing code for Ruby models and working with the Ruby on Rails framework. Additionally, I learned the importance of creating clear and concise documentation to help others understand and use the code I write. Overall, this challenge was a valuable learning experience for developing my skills in Ruby programming.
