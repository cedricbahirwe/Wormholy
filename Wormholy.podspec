Pod::Spec.new do |s|
  s.name         = "Wormholy"
  s.version      = "0.1"
  s.summary      = "Network debugging made easy"
  s.description  = <<-DESC
    Your description here.
  DESC
  s.homepage     = "https://github.com/pmusolino/Wormholy"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Paolo Musolino" => "info@codeido.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/pmusolino/Wormholy.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*.{swift, h , m}"
  s.public_header_files = "Sources/**/*.h"
  #s.private_header_files = "Sources/**/WormholyMethodSwizzling.h"
  s.resource_bundles = {
    'Wormholy' => ['Sources/**/*.storyboard', 'Sources/**/*.xib']
  }
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -force_load' }
  s.frameworks  = "Foundation"
end
