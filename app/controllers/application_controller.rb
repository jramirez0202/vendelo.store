class ApplicationController < ActionController::Base
    include Pagy::Backend

    before_action :set_locale

    def set_locale
     I18n.locale = :es
    end
end
