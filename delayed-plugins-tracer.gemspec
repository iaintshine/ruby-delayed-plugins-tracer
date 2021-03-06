# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "delayed-plugins-tracer"
  spec.version       = "1.0.2"
  spec.authors       = ["iaintshine"]
  spec.email         = ["bodziomista@gmail.com"]

  spec.summary       = %q{OpenTracing instrumentation for Delayed::Job}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/iaintshine/ruby-delayed-plugins-tracer"
  spec.license       = "Apache-2.0"

  spec.required_ruby_version = ">= 2.2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'delayed_job_active_record',  "~> 4.1"
  spec.add_dependency 'railties', '>= 3.2'
  spec.add_dependency 'multi_json'
  spec.add_dependency 'opentracing', '~> 0.3.1'
  spec.add_dependency 'method-tracer', '~> 1.1'

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "database_cleaner", "~> 1.6"
  spec.add_development_dependency "tracing-matchers", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
