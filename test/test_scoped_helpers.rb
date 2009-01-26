# I'm not really sure how to write tests for this =\
require "scoped_helpers"

puts SCOPED_HELPERS.inspect
module TestingScopedHelpers
  scoped_helpers :frog do
    def sex
      6
    end
  end
end

puts SCOPED_HELPERS.inspect
module MoreTestingScopedHelpers
  scoped_helpers :frog do
    def ass
      9
    end
  end
end

Proc.new {
  include MoreTestingScopedHelpers
  puts frog.ass
}.call

puts SCOPED_HELPERS.inspect