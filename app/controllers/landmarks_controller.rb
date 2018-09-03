class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
  end

  get '/landmarks' do
    erb :'landmarks/index'
  end

  get 'landmark/:id' do
    @landmark = Landmark.find_by_id(:id)
    erb :'/landmarks/show'
  end


end
