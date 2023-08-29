Pod::Spec.new do |s|
  s.name = 'BasisTheory'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '0.8.0'
  s.source = { :git => 'https://github.com/Basis-Theory/basistheory-swift.git', :tag => '0.8.0' }
  s.authors = 'BasisTheory'
  s.license = 'Apache'
  s.homepage = 'https://github.com/Basis-Theory/basistheory-swift'
  s.summary = 'BasisTheory Swift SDK'
  s.source_files = 'BasisTheory/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
  s.swift_version = '5.1'
end
