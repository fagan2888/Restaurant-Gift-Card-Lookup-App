#{{{ Marathon
require_fixture 'default'
#}}} Marathon

name("CreateAccount")
description("This test cases tests creating a new account. It also must flag that the password is not strong enough. Then create the account with a strong password.")
severity("critical")
id("CreateAccount")

def test

    with_window("Application Login", timeout = 5) {
        click("New User?")
        sleep(5)
    }

    with_window("New Account Page") {
        select("userName", "User5")
        select("password", "Password")
        select("password2", "Password")
        select("profilePic", "E:\\Programming\\CSC 202 Work\\Assignment4\\src\\restaurants.xls")
        click("Register")
        set_no_fail_on_exit(click("Register"))
        select("password", "Password#1")
        select("password2", "Password#1")
        click("Register")
        window_closed("Account Created")
        window_closed("New Account Page")
    }

end
