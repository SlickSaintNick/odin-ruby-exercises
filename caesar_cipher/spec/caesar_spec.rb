# frozen_string_literal: true

require_relative '../lib/caesar'

describe '#caesar_cipher' do
  context 'when passed the string "aA Aa!"' do

    let(:string) { 'aA Aa!' }

    it 'returns "aA Aa!" for no cipher' do
      expect(caesar_cipher(string)).to eql('aA Aa!')
    end

    it 'returns "fF Ff!" for a cipher of 5' do
      expect(caesar_cipher(string, 5)).to eql('fF Ff!')
    end

    it 'returns "bB Bb!" for a cipher of 1' do
      expect(caesar_cipher(string, 1)).to eql('bB Bb!')
    end
  end

  context 'when passed the string "wXyZ"' do
    let (:string) { 'wXyZ' }

    it 'returns "aBcD" for a cipher of 4' do
      expect(caesar_cipher(string, 4)).to eql('aBcD')
    end

    it 'returns "vWxY" for a cipher of -1' do
      expect(caesar_cipher(string, -1)).to eql('vWxY')
    end
  end
end
