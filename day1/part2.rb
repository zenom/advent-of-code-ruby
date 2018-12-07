#!/usr/bin/env ruby
require 'set'

freqs           = File.read('input.txt').split("\n").map(&:to_i)
frequency_list  = Set.new
sum             = 0

freqs.cycle do |freq|
  sum += freq
  if frequency_list.include?(sum)
    puts sum
    exit
  end
  frequency_list.add(sum)
end
