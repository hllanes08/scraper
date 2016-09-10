# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  url        :string
#  h1         :string
#  h2         :string
#  h3         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'nokogiri'
require 'restclient'
require 'rubygems'
require 'uri'
class Page < ActiveRecord::Base
    def scraper
	unless self.url =~ URI::regexp("http") 	
	    errors.add(:url, :blank, message: "Invalid Url")
	    return false
	end
	site = Nokogiri::HTML(RestClient.get(self.url))
	p site.css('title')
       return true	
    end
end
