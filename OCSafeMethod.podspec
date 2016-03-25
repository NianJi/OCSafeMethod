Pod::Spec.new do |s|
  s.name         = "OCSafeMethod"
  s.version      = "1.0.0"
  s.summary      = "Safe methods of NSDictionary and NSArray"

  s.description  = <<-DESC
                   * get string or number immediate from NSDictionary and NSArray
                   * No warry about crashs caused by type error.
                   DESC
  
  s.platform     = :ios
  s.ios.deployment_target = '6.0'

  s.homepage     = "https://github.com/NianJi/OCSafeMethod"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "念纪" => "fengnianji@gmail.com" }
  s.source       = { :git => "https://github.com/NianJi/OCSafeMethod.git", :tag => "1.0.0" }

  s.source_files  = "OCSafeMethod/**/*.{h,m}"
  s.requires_arc = true
  s.frameworks = 'Foundation'

end
