platform :ios, '9.3'
use_frameworks!

def shared_pods
  pod 'Pelias', :git => 'https://github.com/pelias/pelias-ios-sdk.git', :commit => 'fe87d51'
  pod 'OnTheRoad', :git => 'https://github.com/mapzen/on-the-road_ios.git', :commit => '603fe7a'
  pod 'Tangram-es', '~> 0.6.0'
end

target "ios-sdk" do
  shared_pods
end

target "ios-sdkTests" do
  shared_pods
end
