require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rps_model.rb')

also_reload('./models/*')

get '/:choice1/:choice2' do
  choice1 = params[:choice1]
  choice2 = params[:choice2]
  @game_result = RPSGame.check_win(choice1, choice2)
  erb( :result )
end
