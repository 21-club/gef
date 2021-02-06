# frozen_string_literal: true

# This is the primary location for defining gef preferences
#
# The expectation is that this is created once and stored in
# the gef environment
#
# setters:
# a.color = :blue
# a[:color] = :blue
# a.set :color = :blue
# a.preferred_color = :blue
#
# getters:
# a.color
# a[:color]
# a.get :color
# a.preferred_color
#
require 'gef/preferences/configuration'
require 'gef/core/environment'

module Gef
  class AppConfiguration < Preferences::Configuration
    # Alphabetized to more easily lookup particular preferences

    # @!attribute [rw] admin_interface_logo
    #   @return [String] URL of logo used in admin (default: +'logo/solidus.svg'+)
    preference :admin_interface_logo, :string, default: 'logo/solidus.svg'

    # @!attribute [rw] layout
    #   @return [String] template to use for layout on the frontend (default: +"gef/layouts/gef_application"+)
    preference :layout, :string, default: 'gef/layouts/gef_application'

    # @!attribute [rw] logo
    #   @return [String] URL of logo used on frontend (default: +'logo/solidus.svg'+)
    preference :logo, :string, default: 'logo/solidus.svg'

    # Default mail headers settings

    # @!attribute [rw] send_core_emails
    #   @return [Boolean] Whether to send transactional emails (default: true)
    preference :send_core_emails, :boolean, default: true

    # @!attribute [rw] mails_from
    #   @return [String] Email address used as +From:+ field in transactional emails.
    preference :mails_from, :string, default: 'gef@example.com'

    def static_model_preferences
      @static_model_preferences ||= gef::Preferences::StaticModelPreferences.new
    end

    def environment
      @environment ||= Gef::Core::Environment.new(self).tap do |env|
      end
    end
  end
end
