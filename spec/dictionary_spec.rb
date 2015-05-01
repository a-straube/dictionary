require('rspec')
require('dictionary')

describe(Word) do
  before do
    Word.clear()
  end

  describe('#word') do
    it('returns a new word') do
      new_word = Word.new("cheese")
      expect(new_word.word()).to(eq("cheese"))
    end
  end

  describe('#save') do
    it('saves a word') do
      new_word = Word.new("cheese")
      new_word.save()
      new_word2 = Word.new("baseball")
      new_word2.save()
      expect(Word.all()).to(eq([new_word, new_word2]))
    end
  end

  describe('#id') do
    it('returns the id number of a word entered') do
      new_word = Word.new("cheese")
      new_word.save()
      new_word2 = Word.new("baseball")
      new_word2.save()
      expect(new_word2.id()).to(eq(2))
    end
  end

  describe('.find') do
    it('finds a word entered by id number') do
      new_word = Word.new("giant")
      new_word.save()
      new_word2 = Word.new("baseball")
      new_word2.save()
      expect(Word.find(2)).to(eq(new_word2))
    end
  end
end
