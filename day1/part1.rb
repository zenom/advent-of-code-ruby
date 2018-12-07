#!/usr/bin/env ruby

freqs = File.read('input.txt').split("\n").map(&:to_i)
puts freqs.inject(:+)
