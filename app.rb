require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  #
  post '/piglatinize' do
    text = PigLatinizer.new
     #binding.pry
    @text = text.piglatinize(params[:user_phrase])
    erb :results
  end


  end

end
*************
it "displays the pig latinized phrase upon form submission" do
  expect(last_response.body).to include("Onceway uponway away imetay andway away eryvay oodgay imetay itway asway erethay asway away oocowmay omingcay ownday alongway ethay oadray andway isthay oocowmay atthay asway omingcay ownday alongway ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay")
end

it "displays the pig latinized phrase upon form submission" do
  expect(last_response.body).to include("eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay")
end
