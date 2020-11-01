

Pod::Spec.new do |spec|
spec.name         = "SwiftUIRadioButtons"
spec.version      = "0.1.1"
spec.homepage      = "https://github.com/imokhtar/SwiftUIRadioButtons"
spec.summary      = "Radio buttons collection views written puerly in SwiftUI follwing its philshophy."
spec.description  = <<-DESC
Radio buttons collection views written puerly in SwiftUI follwing its philshophy.
DESC
spec.license      = { :type => "MIT", :file => "LICENSE" }
spec.author             = { "author" => "ahmed.s.mokhtar@outlook.com" }
spec.documentation_url = "https://github.com/imokhtar/SwiftUIRadioButtons/blob/main/README.md"
spec.platforms = { :ios => "13.0" }
spec.swift_version = "5.1"
spec.source       = { :git => "https://github.com/imokhtar/SwiftUIRadioButtons.git", :tag => "v#{spec.version}" }
spec.source_files  = "Sources/SwiftUIRadioButtons/**/*.swift"
spec.xcconfig = { "SWIFT_VERSION" => "5.1" }
end
