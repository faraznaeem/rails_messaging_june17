require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Mailboxer
  class Application < Rails::Application

    config.active_record.raise_in_transactional_callbacks = true


    config.action_mailer.default_url_options = { host: 'ca-mailboxer.herokuapp.com' }

    config.generators do |generate|
      generate.test_framework :rspec
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
    end
  end
end



