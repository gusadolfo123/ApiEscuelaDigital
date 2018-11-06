class ApplicationController < ActionController::API
    # se incluye libreria de knock
    include Knock::Authenticable
end
