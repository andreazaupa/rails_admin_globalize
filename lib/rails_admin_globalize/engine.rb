module RailsAdminGlobalize
  class Engine < ::Rails::Engine

    if Rails.version >= '3.1'
      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w( rails_admin/custom/rails_admin_globalize.js )
      end
    end

  end
end
