=begin
Launcher uses the properties specified here to launch the application
=end

#{{{ Fixture Properties
fixture_properties = {
        'marathon.project.launcher.model' => "com.jaliansystems.marathonite.launchers.executablejar.FXExecutableJarLauncherModel",
        'marathon.aut.executable.launch' => "%marathon.project.dir%/../../FinalProject2/out/artifacts/FinalProject2_jar/FinalProject2.jar",
        'marathon.application.arguments' => "",
        'marathon.application.working.dir' => "",
        'marathon.application.vm.arguments' => "",
        'marathon.application.start.window' => "RestaurantLocatorTest",
        'marathon.application.java.home' => "C:\\Program Files (x86)\\Java\\jdk1.8.0_66",
        'marathon.fixture.reuse' => ""
    }
#}}} Fixture Properties

=begin
Default Fixture
=end

class Fixture

=begin
    Marathon executes this method at the end of test script.
=end

    def teardown
        
    end

=begin
    Marathon executes this method before the test script.
=end

    def setup
    end

=begin
    Marathon executes this method after the first window of the application is displayed.
    You can add any Marathon script elements here.
=end

    def test_setup
        
    end

end

$fixture = Fixture.new

=begin
Any code you add below this comment is executed before the application is started.
You can use any ruby script here and not selenium and marathon script elements.
=end

