class Word
  @@all_words = []

  define_method(:initialize) do |word|
    @word = word
  end

  define_method(:word) do
    @word
  end
end

class Definition
end
