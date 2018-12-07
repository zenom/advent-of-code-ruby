#!/usr/bin/env ruby

crates = File.read('input.txt').split("\n")

two_letters_match   = 0
three_letters_match = 0

crates.each do |crate|
  all_letters = crate.split('').group_by(&:itself).map { |k,v| [k, v.count] }.to_h
  two_letters_match   += 1 if all_letters.values.include?(2)
  three_letters_match += 1 if all_letters.values.include?(3)
end

puts two_letters_match * three_letters_match
