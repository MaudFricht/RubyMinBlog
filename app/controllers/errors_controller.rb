class ErrorsController < ApplicationController
  def error404
        render status: :not_found
  end

  def unacceptable
        render :status => 422
    end

    def internal_error
        render :status => 500
    end

end
