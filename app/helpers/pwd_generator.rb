class PwdGenerator
  ATTRIBUTES = [:no_words, :no_uppercase_alpha, :no_lowercase_alpha, :no_symbols, :no_numerics, :no_passwords,
                :word_separator]
  DEFAULTS= {
      no_words: 4,
      no_uppercase_alpha: 5,
      no_lowercase_alpha: 5,
      no_symbols: 1,
      no_numerics: 3,
      no_passwords: 10,
      word_separator: ' '}
  RULES = [:uppercase, :lowercase, :numerics]
  RANDOM = Random::new
  attr_accessor *ATTRIBUTES

  def initialize(options = {})
    config options
  end

  def config(options = {})
    options.each { |key, value| eval "@#{key.to_s} = value" if ATTRIBUTES.include?(key) }
    ATTRIBUTES.each { |key| eval "@#{key.to_s} ||= DEFAULTS[key]" }
  end

  def generate
    passwords = []
    @no_passwords.times do
      words = []
      @no_words.times do |i|
        rule = RULES[i%RULES.length]
        word = ''
        case rule
          when :uppercase
            @no_uppercase_alpha.times { word += "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[RANDOM.rand(0..25), 1] }
          when :lowercase
            @no_lowercase_alpha.times { word += "abcdefghijklmnopqrstuvwxyz"[RANDOM.rand(0..25), 1] }
          else
            strokes = []
            @no_numerics.times { strokes << "0123456789"[RANDOM.rand(0..8), 1] }
            @no_symbols.times { strokes << '!@#$&*.:?+='[RANDOM.rand(0..10), 1] }
            word = strokes.shuffle.join('')
        end
        words << word
      end
      passwords << words.shuffle.join(@word_separator)
    end
    passwords
  end
end
