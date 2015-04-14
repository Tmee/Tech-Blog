class CnetScraper < ActiveRecord::Base

  def self.get_document
    @documnet = Nokogiri::HTML(open("http://www.cnet.com/news/"))
  end

  def self.get_top_stories
    @top_stories = @documnet.xpath("//div[contains(@id, 'rbSkin')]//div[contains(@id, 'rbContent')]//section[contains(@id, 'topStories')]//div[contains(@section, 'topStories')]")
  end

  def self.get_data
    @top_stories.map do |x|
      {
        header: x.xpath("div[contains(@class, 'content')]//h3").text,
        image: x.xpath("figure//img").attribute('src').value,
        detail: x.xpath("div[contains(@class, 'content')]//p").text,
        link: "http://www.cnet.com#{story_link(x)}"
      }
    end
  end

  def self.story_link(x)
    x.xpath("a[contains(@class, 'mainStory')]").attribute('href').value
  end
end
