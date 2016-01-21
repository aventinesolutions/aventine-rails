class PwdGenerator
  ATTRIBUTES = [:no_words, :no_uppercase_alpha, :no_lowercase_alpha, :no_symbols, :no_numerics, :no_passwords,
                :word_separator]
  DEFAULTS= {
      :no_words => 4,
      :no_uppercase_alpha => 5,
      :no_lowercase_alpha => 5,
      :no_symbols => 1,
      :no_numerics => 3,
      :no_passwords => 10,
      :word_separator => ' '}
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
    (1..@no_passwords).each do
      words = []
      (1..@no_words).each do |i|
        rule = RULES[i%RULES.length]
        word = ''
        case rule
          when :uppercase
            (1..@no_uppercase_alpha).each { word += "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[RANDOM.rand(0..25), 1] }
          when :lowercase
            (1..@no_lowercase_alpha).each { word += "abcdefghijklmnopqrstuvwxyz"[RANDOM.rand(0..25), 1] }
          else
            strokes = []
            (1..@no_numerics).each { strokes << "0123456789"[RANDOM.rand(0..8), 1] }
            (1..@no_symbols).each { strokes << '!@#$&*.:?+='[RANDOM.rand(0..10), 1] }
            word = strokes.shuffle.join('')
        end
        words << word
      end
      passwords << words.shuffle.join(@word_separator)
    end
    passwords
  end
end
