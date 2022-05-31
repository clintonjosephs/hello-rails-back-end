class V1::GreetingsController < ApplicationController
  def show
    random_greeting = Greeting.all.sample(1).first
    if random_greeting.nil?
      render json: { status: 'EMPTY', data: '' }.to_json
    else
      render json: { status: 'SUCCESS', data: random_greeting.text }.to_json
    end
  end
end
