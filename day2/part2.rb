#!/usr/bin/env ruby

crates = File.read('input.txt').split("\n")

# could clean this up a bit
def crates_close?(crate_one, crate_two)
  differences = 0
  crate_one.each_char.with_index do |char, loc|
    differences += 1 if char != crate_two.chars[loc]
  end
  differences == 1
end

def common_letters(crate_one, crate_two)
  matches = ''
  crate_one.each_char.with_index do |char, loc|
     matches += char if char == crate_two.chars[loc]
  end
  matches
end

crates.each do |crate|
  crates.each do |crate2|
    if crates_close?(crate, crate2)
      puts common_letters(crate, crate2)
      exit
    end
  end
end

