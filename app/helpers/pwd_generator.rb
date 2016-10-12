class PwdGenerator
  ATTRIBUTES = [:no_words, :no_uppercase_alpha, :no_lowercase_alpha, :no_symbols, :no_numerics, :no_passwords,
                :word_separator]
  DEFAULTS= {
      no_words: 5,
      no_uppercase_alpha: 5,
      no_lowercase_alpha: 5,
      no_symbols: 1,
      no_numerics: 3,
      no_passwords: 10,
      word_separator: ' '}
  RULES = [:uppercase, :lowercase, :numerics]
  attr_accessor *ATTRIBUTES

  def initialize(options = {})
    config options
  end

  def config(options = {})
    ATTRIBUTES.each { |key| send "#{key}=", options.fetch(key, DEFAULTS[key]) }
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
            @no_uppercase_alpha.times { word += "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[rand(0..25), 1] }
          when :lowercase
            @no_lowercase_alpha.times { word += "abcdefghijklmnopqrstuvwxyz"[rand(0..25), 1] }
          else
            strokes = []
            @no_numerics.times { strokes << "0123456789"[rand(0..8), 1] }
            @no_symbols.times { strokes << '!@#$&*.:?+='[rand(0..10), 1] }
            word = strokes.shuffle.join('')
        end
        words << word
      end
      passwords << words.shuffle.join(@word_separator)
    end
    passwords
  end
end
