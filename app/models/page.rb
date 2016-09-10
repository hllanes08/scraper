# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

require 'nokogiri'
require 'restclient'
require 'rubygems'
require 'uri'
class Page < ActiveRecord::Base
   has_many :tag 
    def scraper
	begin
	    ActiveRecord::Base.transaction do
	        unless self.url =~ URI::regexp(["http","https"]) 	
	            errors.add(:url, :blank, message: "Invalid Url")
	            return false
	        end
		site = Nokogiri::HTML(RestClient.get(self.url))
		self.name = site.css('title').text
		self.save!
		#search h1
		search_and_save(site,'h1','h1')		
		#search h2
		search_and_save(site,'h2','h2')
		#search h3
		search_and_save(site,'h3','h3')
	        site.css('a').each do |li|
		    link = Tag.new
		    link.tag_type = 'link'
		    link.page_id = self.id
		    link.url = li['href']
	 	    link.save!
		end
	    end
	rescue ActiveRecord::RecordNotUnique => ru
	    errors.add(:url, :blank, message: "Duplicated site") 
	    return false
	rescue Exception => e
	    errors.add(:url, :blank, message: e.message)
	    return false
	end	
    end

    private 

    def search_and_save(site,to_search,type)
    	site.css(to_search).each do |item|
	    unless item.text.empty?
	    	tag = Tag.new
		tag.content = item.text
		tag.tag_type = type
		tag.page_id = self.id
		tag.save!
	    end
    	end
    end
end
