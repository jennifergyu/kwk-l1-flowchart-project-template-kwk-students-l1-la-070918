require_relative 'config/environment'

class App < Sinatra::Base

configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get '/' do
    erb :index
  end
  
  get '/' do
    rb :model
end

  # Add your post route and action below
  post '/' do
    #the first part we can make up the 2ns part is already assigned in index
    the_genre = params[:user_genre]
    the_issue = params[:user_issue]
    @song = get_anthem(the_genre,the_issue)
    erb :results
  end
end


def get_anthem(genre,issue)
  
  if genre == "rock"
        if issue == "empowerment"
        song = "https://media.giphy.com/media/eu3FdKeBQCuNEKyQoO/giphy.gif"
        elsif issue == "activism"
        song = "http://i.imgur.com/ggdetCP.gif"
        elsif issue == "self-love"
        song = "https://media.giphy.com/media/l3q2GeMfc5MnHGseI/giphy.gif"
        elsif issue == "girlboss"
        song = "https://media.giphy.com/media/l3q2GeMfc5MnHGseI/giphy.gif"
  
      end
      
  elsif genre == "soul"
       if issue == "empowerment"
        song = "https://media.giphy.com/media/eu3FdKeBQCuNEKyQoO/giphy.gif"
        elsif issue == "activism"
        song = "http://i.imgur.com/ggdetCP.gif"
        elsif issue == "self-love"
        song = "https://media.giphy.com/media/l3q2GeMfc5MnHGseI/giphy.gif"
        elsif issue == "girlboss"
        song = "https://media.giphy.com/media/l3q2GeMfc5MnHGseI/giphy.gif"
       end 
    elsif genre == "punk"
       if issue == "empowerment"
        song = "https://media.giphy.com/media/eu3FdKeBQCuNEKyQoO/giphy.gif"
        elsif issue == "activism"
        song = "http://i.imgur.com/ggdetCP.gif"
        elsif issue == "self-love"
        song = "https://media.giphy.com/media/l3q2GeMfc5MnHGseI/giphy.gif"
        elsif issue == "girlboss"
        song = "https://media.giphy.com/media/l3q2GeMfc5MnHGseI/giphy.gif"
       end
    elsif genre == "rnb"
       if issue == "empowerment"
        song = "https://t2.genius.com/unsafe/221x221/https%3A%2F%2Fimages.genius.com%2Fce98cca792d9ba567d2b5d4ffecbd013.400x400x1.jpg"
        elsif issue == "activism"
        song = "https://i.ytimg.com/vi/00dOCTalQwA/maxresdefault.jpg"
        elsif issue == "self-love"
        song = "https://images-na.ssl-images-amazon.com/images/I/41MSP77EPPL.jpg"
        elsif issue == "girlboss"
        song= "https://i.ebayimg.com/images/g/Z0cAAOxyPLpRffeh/s-l300.jpg"
       end
  end
  
return song
end