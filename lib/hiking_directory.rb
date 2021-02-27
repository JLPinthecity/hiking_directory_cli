require_relative "./hiking_directory/version"
require_relative "./hiking_directory/cli"
require_relative "./hiking_directory/state"
require_relative "./hiking_directory/scraper"
require_relative "./hiking_directory/region"

require 'pry'
require 'nokogiri'
require 'open-uri'

module HikingDirectory
  class Error < StandardError; end
  # Your code goes here...
end
