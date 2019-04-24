require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps_model.rb')

also_reload('./models/*')

get '/' do
  erb( :home )
end

get '/:choice1/:choice2' do
  choice1 = params[:choice1]
  choice2 = params[:choice2]
  @player1_game_result = RPSGame.check_win(choice1, choice2)
  # @player2_game_result = RPSGame.check_win(choice2, choice1)
  erb( :result )
end
