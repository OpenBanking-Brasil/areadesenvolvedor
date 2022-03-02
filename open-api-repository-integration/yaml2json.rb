#!/usr/bin/env ruby
require 'json'
require 'yaml'
require 'fileutils'

NEW_API_DIRECTORY = './generated-sources/swagger-apis'

files = ARGV.length() == 0 ? Dir["../documentation/source/swagger/*"] : ARGV
FileUtils.mkdir_p NEW_API_DIRECTORY

# swaggerUrlsBundle = []
# swaggerUrlsBundle << {
#   :name : parsedInput['info']['version'],
#   :url : "./#{parsedInput['info']['version']}.json"
# }
# fileContents =  File.read("#{newApiDirectory}/swagger-ui-template.html")
# fileContents.gsub(/\{\{URLS_SWAGGER_BUNDLE\}\}/, JSON.generate(swaggerUrlsBundle))
# FileUtils.cp 'open-api-repository-integration/swagger-ui-template.html' newApiDirectory

files.each do |file_name|
  if !File.directory? file_name
    file_name = file_name.gsub('../documentation/source/swagger/','')
    file_name = "../documentation/source/swagger/#{file_name}"
  
    if !File.file? file_name
      puts "File doen't exist: #{file_name}"
      break
    end
  
    if file_name[/\.yaml/]
      input =  YAML.load_file(file_name)
      newFileName = "#{input['info']['version']}.yml"
      newApiDirectory =  "#{NEW_API_DIRECTORY}/#{file_name
          .gsub(/^(\.\.\/documentation\/source\/swagger\/swagger_)(.*)(.yaml)/,"\\2")
          .gsub('_apis','')}"
          .gsub('_','-')
      FileUtils.mkdir_p newApiDirectory

      oldFileName = File.absolute_path file_name
      FileUtils.cp oldFileName, "#{newApiDirectory}/#{newFileName}"

      # input =  JSON.pretty_generate(YAML.load_file(file_name))
      # parsedInput = JSON.parse(input)
      # unless parsedInput
      #   puts "Failed to parse file: #{file_name}"
      #   break
      # else
      #   newFileName = "#{parsedInput['info']['version']}.json"
      #   newApiDirectory =  "#{NEW_API_DIRECTORY}/#{file_name
      #     .gsub(/^(\.\.\/documentation\/source\/swagger\/swagger_)(.*)(.yaml)/,"\\2")
      #     .gsub('_apis','')}"
      #     .gsub('_','-')

      #   FileUtils.mkdir_p newApiDirectory
      #   File.open("#{newApiDirectory}/#{newFileName}", 'w') do |out|
      #     out.write input
      #   end
      # end
    end
  end
end