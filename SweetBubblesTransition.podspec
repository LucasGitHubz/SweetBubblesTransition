Pod::Spec.new do |s|

  s.platform = :ios
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  s.name         = "SweetBubblesTransition"
  s.version      = "1.0.0"
  s.summary      = "Bubble transition between two Controllers written in Swift."
  s.description = "SweetBubbles is as indicated by its name, a sweet transition between two controllers using bubble to make it beautiful !"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Lucas Amelin" => "lucasamelin14@gmail.com" }
  s.homepage = "https://github.com/LucasGitHubz/SweetBubblesTransition"
  s.source = { :git => "https://github.com/LucasGitHubz/SweetBubblesTransition.git",
  :tag => "#{s.version}" }
  
  s.framework = "UIKit"
  s.dependency 'Reusable', '~> 4.1.1'
  
  s.source_files = 'SweetBubblesTransition/**/*.{swift}'
  
  s.resources = 'SweetBubblesTransition/**/*.{png,storyboard}'
  
  s.swift_version = "5"

end

