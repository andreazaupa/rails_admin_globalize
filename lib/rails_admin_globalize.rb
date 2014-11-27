require "rails_admin_globalize/engine"

module RailsAdminGlobalize
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Globalize < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :pjax? do
          false
        end

        register_instance_option :member? do
          true
        end

        register_instance_option :visible? do
          authorized? && bindings[:object].class.respond_to?("translated_attribute_names")
        end

        register_instance_option :link_icon do
          'icon-globe'
        end

        register_instance_option :member? do
          true
        end

        register_instance_option :http_methods do
          [:get, :put, :patch]
        end

        register_instance_option :controller do
          Proc.new do
            @available_locales = I18n.available_locales
            @already_translated_locales = @object.try(:available_locales) || []
            @not_yet_translated_locales = @available_locales - @already_translated_locales

            if request.get?
              @target_locale = params[:target_locale] || @available_locales.first || I18n.locale
            else
              ::Globalize.with_locale params[:target_locale] do
                sanitize_params_for!(:update)

                @object.set_attributes(params[@abstract_model.param_key])
                @authorization_adapter && @authorization_adapter.attributes_for(:update, @abstract_model).each do |name, value|
                  @object.send("#{name}=", value)
                end

                if @object.save
                  flash[:notice] = I18n.t("rails_admin.globalize.success")
                  redirect_to back_or_index
                else
                  flash[:alert] = I18n.t("rails_admin.globalize.error")
                end
              end
            end
          end
        end
      end
    end
  end
end
