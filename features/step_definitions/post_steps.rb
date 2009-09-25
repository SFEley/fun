DIARY_FILES = Dir.glob(File.join(RAILS_ROOT, 'doc', 'diary', '*'))

Given /^the first (\d+) diary posts$/ do |num|
  count = num.to_i - 1  # Because 'num' is a string, and arrays are 0-based
  DIARY_FILES[0..count].each {|file| Post.import(file)}
end
