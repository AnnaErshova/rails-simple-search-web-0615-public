class Search
  def self.for(keyword)
    Word.all.select {|word| word.name.include?(keyword)}     
  end # end for
end # end class

# self.for:
#    returns results in an array 
#    can return multiple results 
#    returns an empty array if it finds nothing 
