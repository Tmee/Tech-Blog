class CnetsController < ApplicationController

  def index
    @stories = get_stories
  end

  private

  def get_stories
    CnetScraper.get_document
    CnetScraper.get_top_stories
    CnetScraper.get_data
  end
end
