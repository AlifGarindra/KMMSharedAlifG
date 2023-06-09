Pod::Spec.new do |spec|
    spec.name         = 'KMMSharedAlifG'
    spec.version      = '1.0.2'
    spec.summary      = 'testing framework from cocoapod'
    spec.homepage     = 'https://github.com/AlifGarindra'
  spec.license      = { :type => 'MIT', :text => 'text' }
    spec.author       = 'Alif Garindra'
    spec.source       = { :git => 'https://github.com/AlifGarindra/KMMSharedAlifG.git', :tag => spec.version.to_s }  
    spec.vendored_frameworks      = 'shared.framework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target = '12.4'
                
                
    spec.pod_target_xcconfig = {
        'KOTLIN_PROJECT_PATH' => ':shared',
        'PRODUCT_MODULE_NAME' => 'shared',
    }
                
    # spec.script_phases = [
    #     {
    #         :name => 'Build shared',
    #         :execution_position => :before_compile,
    #         :shell_path => '/bin/sh',
    #         :script => <<-SCRIPT
    #             if [ "YES" = "$OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED" ]; then
    #               echo "Skipping Gradle build task invocation due to OVERRIDE_KOTLIN_BUILD_IDE_SUPPORTED environment variable set to \"YES\""
    #               exit 0
    #             fi
    #             set -ev
    #             REPO_ROOT="$PODS_TARGET_SRCROOT"
    #             "$REPO_ROOT/../gradlew" -p "$REPO_ROOT" $KOTLIN_PROJECT_PATH:syncFramework \
    #                 -Pkotlin.native.cocoapods.platform=$PLATFORM_NAME \
    #                 -Pkotlin.native.cocoapods.archs="$ARCHS" \
    #                 -Pkotlin.native.cocoapods.configuration="$CONFIGURATION"
    #         SCRIPT
    #     }
    # ]
                
end