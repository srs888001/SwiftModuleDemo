# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

workspace 'SwiftModuleDemo.xcworkspace'

target 'SwiftModuleDemo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'Swinject'
  pod 'URLNavigator'
end

target "CommonModule" do
  use_frameworks!
  project 'Modules/CommonModule/CommonModule.xcodeproj'
  pod 'Swinject'
  pod 'URLNavigator'
end

target "AModule" do
  use_frameworks!
  project 'Modules/AModule/AModule.xcodeproj'
  pod 'Swinject'
  pod 'URLNavigator'
end

target "BModule" do
  use_frameworks!
  project 'Modules/BModule/BModule.xcodeproj'
  pod 'Swinject'
  pod 'URLNavigator'
end
