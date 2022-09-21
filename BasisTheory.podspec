Pod::Spec.new do |s|
  s.name = 'BasisTheory'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = 'v1'
  s.source = { :git => 'git@github.com:Basis-Theory/basistheory-swift.git', :tag => 'vv1' }
  s.authors = 'Basis Theory'
  s.license = 'Apache'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'Basis Theory Swift SDK'
  s.source_files = 'BasisTheory/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
