class Word
  @@all_words = []

  define_method(:initialize) do |word|
    @word = word
    @word_id = @@all_words.length().+(1)
    @definitions = []
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

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end
end

class Definition
  @@all_definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
    @definition_id = @@all_definitions.length().+(1)
  end

  define_method(:definition) do
    @definition
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

  define_method(:save) do
    @@all_definitions.push(self)
  end

  define_method(:id) do
    @definition_id
  end

  define_singleton_method(:find) do |find_id|
    find_definition = nil
    @@all_definitions.each() do |definition|
      if definition.id().==(find_id)
        find_definition = definition
      end
    end
    find_definition
  end
end
