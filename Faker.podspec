#
# Be sure to run `pod lib lint Faker.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Faker"
  s.version          = "0.1.0"
  s.summary          = "A short description of Faker."
  s.description      = <<-DESC
                       An optional longer description of Faker

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/swift-faker"
  s.license          = 'MIT'
  s.author           = { "Hau Nguyen" => "hau.nguyentrinh@asnet.com.vn" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/swift-faker.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
