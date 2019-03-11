Pod::Spec.new do |s|
    s.name             = "WJCrashProtector"
    s.version          = '0.0.1'
    s.summary          = "崩溃防护器."

    s.description      = <<-DESC
        防护app崩溃
    DESC

    s.homepage         = "https://github.com/yunhaiwu"

    s.license          = { :type => "MIT", :file => "LICENSE" }

    s.author           = { "吴云海" => "halayun@qq.com" }

    s.source           = { :git => "https://github.com/yunhaiwu/ios-wj-crash-protector.git", :tag => "#{s.version}" }

    s.platform     = :ios, "7.0"
    s.requires_arc = true

    s.exclude_files = "Example"

    s.frameworks = 'UIKit', 'Foundation'

    s.source_files = 'Classes/*'
    s.public_header_files = 'Classes/*.h'

    s.dependency 'WJLoggingAPI'

end
