Gem::Specification.new do |s|
  s.name        = 'mad'
  s.version     = '1.0.0'
  s.summary     = "Dont be mad"
  s.description = "Orginize your code"
  s.authors     = ["Huthaifah Mustafa"]
  s.email       = 'hsul4n@gmail.com'
  s.files       = ["lib/mad.rb"]
  s.homepage    = 'https://rubygems.org/gems/mad'
  s.license     = 'MIT'
  s.executables << 'mad'
  s.add_runtime_dependency 'thor', '~> 1.1'
end