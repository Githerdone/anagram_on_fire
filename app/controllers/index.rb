get '/' do
  @anagram1
  erb :index
end
 
post '/anagram' do
  result = []
  @anagram1 = Word.anagrams_for(params[:user_input])
  erb :index
end
