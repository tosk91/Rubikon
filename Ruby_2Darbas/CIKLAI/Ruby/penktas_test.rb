# frozen_string_literal: true

require_relative 'penktas'
require 'minitest/autorun'

describe 'penktas_test' do
  it 'Palindromas' do
    DalybaIsSavoSkaitmens().must_equal 66
  end
end
