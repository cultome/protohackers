# frozen_string_literal: true

require_relative 'lib/protohackers/version'

Gem::Specification.new do |spec|
  spec.name = 'protohackers'
  spec.version = Protohackers::VERSION
  spec.authors = ['Carlos Soria']
  spec.email = ['csoria@cultome.io']

  spec.summary = 'Protohackers problems solutions'
  spec.description = 'Protohackers problems solutions'
  spec.homepage = 'https://github.com/cultome/protohackers'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://github.com/cultome/protohackers'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/cultome/protohackers'
  spec.metadata['changelog_uri'] = 'https://github.com/cultome/protohackers'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
