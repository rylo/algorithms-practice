class Trie
  attr_accessor :trie
  attr_writer :terminal

  def initialize
    @trie = {}
    @terminal = false
  end

  def insert(string)
    node = self
    string.each_char do |character|
      node = node.trie[character] ||= Trie.new
    end

    node.terminal = true
  end

  def contains?(string)
    node = self
    string.each_char do |character|
      return false if !node.trie[character]
      node = node.trie[character]
    end

    node.terminal?
  end

  def terminal?
    @terminal
  end
end
