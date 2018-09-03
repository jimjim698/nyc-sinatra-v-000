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
    erb :'/figures/figures'
  end

  get '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
  @figure = Figure.find_by_id(params[:id])
  erb :'figures/edit'
  end

  post '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
    redirect "figures/#{@figure.id}"
  end


end
