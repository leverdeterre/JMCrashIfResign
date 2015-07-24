Pod::Spec.new do |s|
  s.name             = "JMCrashIfResign"
  s.version          = "0.1.0"
  s.summary          = "JMCrashIfResign is a way to protect your application against bad usage..."
  s.description      = <<-DESC
                        This lib use a mobile provisionning parser to extract the registered TeamIdentifier.
                        Will execute exit(0) to stop the application.
                       DESC
  s.homepage         = "https://github.com/leverdeterre/JMCrashIfResign"
  s.license          = 'MIT'
  s.author           = { "Jerome Morissard" => "morissardj@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/JMCrashIfResign.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/leverdeterre'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'JMCrashIfResign' => ['Pod/Assets/*.png']
  }

end
