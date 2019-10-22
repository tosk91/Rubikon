require_relative "antras"
require "minitest/autorun"

describe "antras_test" do

    it "Dvigubas" do
        DvigubasSkaitmenys(2).must_equal 22
end
end