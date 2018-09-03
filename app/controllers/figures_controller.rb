class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    @figure.titles<< Title.create(name: params[:title][:name])
    @figure.landmarks<< Landmark.create(name: params[:landmark][:name])
    erb :'figures/show'
  end

  get '/figures' do
    erb '/figures/figures'
  end

end
