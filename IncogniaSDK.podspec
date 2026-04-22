Pod::Spec.new do |s|
    s.name             = 'IncogniaSDK'
    s.version          = 'x.y.z'
    s.summary          = 'Incognia SDK' 
    s.description      = 'Incognia offers the first private identity solution based on location behavior for frictionless authentication and identity verification.'
    s.homepage         = 'https://incognia.com/'
    s.author           = { "Incognia" => "contact@incognia.com" }
    s.source           = { :http => "https://sdk-assets.incognia.com/ios/x.y.z/IncogniaSDK-x.y.z-xcfw-and-bundle.zip"}
    s.documentation_url = "https://developer.incognia.com/"
    s.ios.deployment_target = '15.0'
    s.license = { :type => 'Copyright', :text => 'Copyright 2026 Incognia. See the terms of service at https://incognia.com/'} 
    s.frameworks = 'Foundation'
    s.vendored_frameworks = 'IncogniaSDK.xcframework'
    s.resource_bundles = {'IncogniaSDK' => ['IncogniaSDK.bundle/PrivacyInfo.xcprivacy']}
    s.requires_arc = true
  end