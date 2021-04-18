# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "Keyou_Fang's Blog"
  spec.version       = "0.5.4"
  spec.authors       = ["Keyou_Fang"]
  spec.email         = ["2233276965@qq.com"]

  spec.summary       = "Keyou_Fang's Blog"
  spec.homepage      = "https://github.com/Keyou-Fang/Keyou-Fang.github.io"
  spec.license       = "H14Z"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets/css|assets/js|_layouts|_includes|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"
  spec.add_runtime_dependency 'jekyll-paginate', '~> 1.1'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
