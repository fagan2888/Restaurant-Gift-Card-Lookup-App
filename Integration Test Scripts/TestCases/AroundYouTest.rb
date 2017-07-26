#{{{ Marathon
require_fixture 'default'
#}}} Marathon

name("AroundYouTest")
description("This test, tests the successful login of a user account, the gecoding of an address, the miles slider, and the Around You button. This test must filter the dataset to locations around the geo-coded address, and show the locations marked on the map.")
severity("normal")
id("AroundYouTest")

def test

    with_window("Application Login", timeout = 5) {
        click("New User?")
        sleep(5)
    }

    with_window("New Account Page", timeout = 5) {
        select("userName", "User5")
        select("password", "Password#1")
        select("password2", "Password#1")
        select("profilePic", "E:\\Programming\\CSC 202 Work\\Assignment4\\src\\restaurants.xls")
        click("Register")
        window_closed("Account Created")
        window_closed("New Account Page")
    }
    
    with_window("Application Login", timeout = 5) {
        select("userName", "User5")
        select("password", "Password#1")
        click("Login")
    }
    
    with_window("Restaurant List Page", timeout = 5) {
        select("searchKey", "46843 Trumpet Circle Sterling VA")
        select("milesChoice", "10.9663855462185")
        click("userLocation")
        sleep(10)
        window_closed("Restaurant List Page")
    }
    
    
end
