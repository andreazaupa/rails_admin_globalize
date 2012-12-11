module RailsAdminGlobalize
  class Engine < ::Rails::Engine

    if Rails.version >= '3.1'
      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w( rails_admin/custom/rails_admin_globalize.js rails_admin/custom/rails_admin_globalize.css )
      end
    end

  end
end
