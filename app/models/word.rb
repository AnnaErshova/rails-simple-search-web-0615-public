class Word < ActiveRecord::Base

  validates :name, presence: true

  def index
    @words = Word.all
  end

end