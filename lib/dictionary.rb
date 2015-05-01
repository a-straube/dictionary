class Word
  @@all_words = []

  define_method(:initialize) do |word|
    @word = word
    @word_id = @@all_words.length().+(1)
  end

  define_method(:word) do
    @word
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:id) do
    @word_id
  end

  define_singleton_method(:find) do |find_id|
    find_word = nil
    @@all_words.each() do |word|
      if word.id().==(find_id)
        find_word = word
      end
    end
    find_word
  end
end

class Definition
  define_method(:initialize) do |definition|
    @definition = definition
  end
end
