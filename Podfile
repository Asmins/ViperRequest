# Uncomment this line to define a global platform for your project
 platform :ios, ’10.0’
# Uncomment this line if you're using Swift
 use_frameworks!

target 'ViperRequest' do
    pod 'RxAlamofire’, ‘3.0.0-rc.1’
    pod 'SwiftyJSON'
    pod 'RxSwift',    '3.0.0-rc.1'
    pod 'RxCocoa',    '3.0.0-rc.1'
end

post_install do |installer|
	installer.pods_project.targets.each do |target|
		target.build_configurations.each do |config|
            	config.build_settings['SWIFT_VERSION'] = '3.0'
		end
	end
end
