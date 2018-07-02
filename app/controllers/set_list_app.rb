class SetList < Sinatra::Base

  get '/songs' do
    @songs = Song.all.includes(:playlist)
    erb :"songs/index"
  end

  get '/songs/:id' do
    require 'pry'; binding.pry
    @song = Song.find(params[:id])
    erb :"songs/show"
  end

  post '/songs' do
    title = params[:song][:title]
    length = params[:song][:length]
    play_count = params[:song][:play_count]
    Song.create(title: title, length: length, play_count: play_count)
    redirect '/songs'
  end

end
