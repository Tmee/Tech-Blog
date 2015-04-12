class Seed

  def initialize
    populate_articles
  end

  def populate_articles
    Article.create!(title: "HTML scraping with Nokogiri",
                    description: "A walkthrough on scraping a website for data",
                    link: "#/nokogiri/scrape_jobs",
                    active: true)

    Article.create!(title: "Rails with AngularJS",
                    description: "A tutorial on using AngluarJS on a Rails backend",
                    image: "https://angularjs.org/img/AngularJS-large.png",
                    link: "#/angular_rails")

    Article.create!(title: "Rails Email with Mandrill",
                    description: "A tutorial on sending emails in a new rails application",
                    image: "http://mandrill.com/assets/images/layout/header_logo-2fb73086.png",
                    link: "#/mandrill",
                    active: true )

    Article.create!(title: "Hiding Secret Keys",
                    description: "A couple ways to hide secret keys in your application ",
                    link: "#/hiding_keys" )

    Article.create!(title: "Twitter OmniAuth",
                    description: "A tutorial on using Twitter's API for authentication",
                    image: "https://developers.soundcloud.com/assets/posts/omniauth-f44e986c2b24f34c2a2765c73b359866.png",
                    link: "#/omniauth")
  end
end

Seed.new