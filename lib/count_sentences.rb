require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    binding.pry
    self.end_with?("!")
  end

  def count_sentences
    # self.split(/[.?!]/).delete_if{|n| n==''}.count
    count = 0
    self.split.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        count += 1
      end
    end
    count
  end
end