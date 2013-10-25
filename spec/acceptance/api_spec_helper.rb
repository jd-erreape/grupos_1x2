require 'spec_helper'
require 'rspec_api_documentation/dsl'

RspecApiDocumentation.configure do |config|
  # Output folder
  config.docs_dir = Rails.root.join('doc', 'api')
end

def parsed_response
  @_parsed_response ||= JSON.parse(response_body)
end
