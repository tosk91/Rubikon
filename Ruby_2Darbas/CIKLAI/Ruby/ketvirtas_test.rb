require_relative "ketvirtas"
require "minitest/autorun"

describe "ketvirtas_test" do

    it "Palindromas" do
        Palindromas().must_equal 1
end
end