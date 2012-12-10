require "rails_admin_globalize/engine"

module RailsAdminGlobalize

end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Globalize < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :object_level do
          true
        end

        register_instance_option :visible? do
          true#authorized? && !bindings[:object].approved
        end

        register_instance_option :link_icon do
          'icon-globe'
        end

        register_instance_option :member? do
          true
        end

        register_instance_option :http_methods do
          [:get,:put]
        end

        register_instance_option :controller do

          Proc.new do

            if  request.get?

              @target_locale = params[:target_locale] || (I18n.available_locales - [I18n.locale]).first || I18n.locale

            else

              loc=@current_locale=I18n.locale
              @target_locale = params[:target_locale]

              I18n.locale = @target_locale

              result = @object.update_attributes(params[@object.class.to_s.underscore])


              I18n.locale=loc
              if result
                flash[:notice] = I18n.t("rails_admin.globalize.success")
                redirect_to back_or_index
              else
                flash[:alert] = I18n.t("rails_admin.globalize.error")
              end

            end

            @object.inspect
          end

        end


      end
    end
  end
end

