class Api::CalendarController < ApplicationController
  def create
    response = HTTP
      .headers({
        "Authorization" => "Bearer #{Rails.application.credentials.news_api[:api_key]}",
      })
      .get("https://api.edamam.com/search?q=#{params[:search]}&app_id=$180b6529&from=0&to=3&calories=591-722&health=alcohol-free")
    render json: response.parse
  end
end
