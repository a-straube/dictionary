require('rspec')
require('dictionary')

describe(Word) do
  describe('#word') do
    it('returns a new word') do
      new_word = Word.new("cheese")
      expect(new_word.word()).to(eq("cheese"))
    end
  end
end
