Pod::Spec.new do |s|
  s.name = 'BasisTheory'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.version = '3.0.0'
  s.source = { :git => 'https://github.com/Basis-Theory/basistheory-swift.git', :tag => '2.1.0' }
  s.authors = 'BasisTheory'
  s.license = 'Apache'
  s.homepage = 'https://github.com/Basis-Theory/basistheory-swift'
  s.summary = 'BasisTheory Swift SDK'
  s.source_files = 'BasisTheory/**/*.swift'
  s.swift_version = '5.1'
end
