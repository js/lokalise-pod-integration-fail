# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

inhibit_all_warnings!

target 'archtest2' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for archtest2

  pod 'ReactiveCocoa', '~> 11.2.1'
  pod 'ReactiveSwift', '~> 6.6.0'
  pod 'Lokalise', '~> 0.10.2'

  target 'archtest2Tests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'archtest2UITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      config.build_settings.delete('ARCHS')
    end
  end
end
