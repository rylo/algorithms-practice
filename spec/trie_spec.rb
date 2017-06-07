require 'spec_helper'
require 'algorithms/trie'

RSpec.describe Trie do
  describe '::new' do
    it 'initializes with an empty trie and is not terminal' do
      trie = Trie.new

      expect(trie.trie).to eq({})
      expect(trie.terminal?).to eq(false)
    end
  end

  describe '::insert' do
    it 'inserts a word into the trie' do
      trie = Trie.new

      trie.insert('yoda')

      expect(trie.contains?('yoda')).to eq(true)
    end
  end

  describe '::contains?' do
    it 'returns false if the trie contains no words' do
      trie = Trie.new

      result = trie.contains?('yoda')

      expect(result).to eq(false)
    end

    it 'returns false if the trie contains the given word' do
      trie = Trie.new
      trie.insert('yoda')

      result = trie.contains?('yoda')

      expect(result).to eq(true)
    end

    it 'returns false if the trie does not contain the given word' do
      trie = Trie.new
      trie.insert('yoda')

      result = trie.contains?('yoshi')

      expect(result).to eq(false)
    end
  end
end
