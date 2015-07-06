class Seed

  def initialize
    populate_articles
  end

  def populate_articles
    Article.find_or_create_by(title: "HTML scraping with Nokogiri",
                    description: "A walkthrough on scraping a website for data",
                    link: "#/nokogiri/scrape_jobs",
                    active: true)
    puts "1"

    Article.find_or_create_by(title: "Rails with AngularJS",
                    description: "A tutorial on using AngluarJS on a Rails backend",
                    image: "https://angularjs.org/img/AngularJS-large.png",
                    link: "#/angular_rails")
    puts "2"


    Article.find_or_create_by(title: "Rails Email with Mandrill",
                    description: "A tutorial on sending emails in a new rails application",
                    image: "http://mandrill.com/assets/images/layout/header_logo-2fb73086.png",
                    link: "#/mandrill",
                    active: true )
    puts "3"

    Article.find_or_create_by(title: "Hiding Secret Keys",
                    description: "A couple ways to hide secret keys in your application ",
                    link: "#/hiding_keys",
                    active: true  )
    puts "4"

    Article.find_or_create_by(title: "Twitter OmniAuth",
                    description: "A tutorial on using Twitter's API for authentication",
                    image: "https://developers.soundcloud.com/assets/posts/omniauth-f44e986c2b24f34c2a2765c73b359866.png",
                    link: "#/omniauth")
    puts "5"

    Article.find_or_create_by(title: "jQuery NotePad",
                    description: "New feature on RubyFinder",
                    image: "http://rubyfinder.herokuapp.com/assets/ruby.png",
                    link: "#/notepad",
                    active: true)
    puts "6"

  end
end

Seed.new