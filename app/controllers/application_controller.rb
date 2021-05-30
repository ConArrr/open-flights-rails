class ApplicationController < ActionController::API
  def hello_world
    render json: { text: "HELLO WORLD!!" }
  end
end
