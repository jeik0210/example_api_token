class Api::V1::ApiController < ApplicationController
  def errors(error, status)
    render json: {error: error}, status: status
  end
end
