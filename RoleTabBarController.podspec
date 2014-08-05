Pod::Spec.new do |s|
  s.name             = "RoleTabBarController"
  s.version          = "0.1.0"
  s.summary          = "UITabBarController patterns library - similar to <UITableViewDataSource> patterns."
  s.homepage         = "https://github.com/azu/RoleTabBarController"
  s.license          = 'MIT'
  s.author           = { "azu" => "azuciao@gmail.com" }
  s.source           = { :git => "https://github.com/azu/RoleTabBarController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/azu_re'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
