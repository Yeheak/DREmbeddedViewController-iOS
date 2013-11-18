Pod::Spec.new do |s|
  s.name         = "DREmbeddedViewController"
  s.version      = "0.1"
  s.summary      = "Allows embedding one UIViewController in other UIViewController the easy way"
  s.homepage     = "https://bitbucket.org/darrarski/DREmbeddedViewController-iOS.git"
  s.license      = 'MIT'
  s.author       = { "Darrarski" => "darrarski@gmail.com" }
  s.source       = { :git => "https://bitbucket.org/darrarski/DREmbeddedViewController-iOS.git" }
  s.source_files = 'DREmbeddedViewController/UIViewController+DREmbeddedViewController.{h,m}'
  s.platform     = :ios
  s.requires_arc = true
end
