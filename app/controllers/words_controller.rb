class WordsController < ApplicationController

  # it does not look like we really need words/index for anything, so we will just define words/show
  def show
    @word = Word.find(params[:id])
  end

  def create
    search = Search.for(params[:keyword])
    if search.empty? # no match
      render text: "No results matching that query."
      # render text: "There are no results that match #{:keyword}."
    elsif search.first.name == params[:keyword] # exact match
      redirect_to "/words/#{search.first.id}"
    else # fuzzy match -- this way we avoid defining fuzzy
      render text: "#{search.collect {|word| word.name}}"
    end
  end

end # end class

