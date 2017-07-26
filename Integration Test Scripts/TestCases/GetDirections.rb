#{{{ Marathon
require_fixture 'default'
#}}} Marathon

name("GetDirections")
description("This test, test the method in the program to select a restaurant in the dataset and show the best path from the origin location")
severity("normal")
id("GetDirections")

def test

    with_window("Application Login", timeout = 5) {
        click("New User?")
        sleep(5)
    }

    with_window("New Account Page", timeout = 5) {
        select("userName", "User5")
        sleep(1)
        select("password", "Password#1")
        sleep(1)
        select("password2", "Password#1")
        sleep(1)
        select("profilePic", "E:\\Programming\\CSC 202 Work\\Assignment4\\src\\restaurants.xls")
        sleep(1)
        click("Register")
        window_closed("Account Created")
        window_closed("New Account Page")
    }
    
    with_window("Application Login", timeout = 5) {
        select("userName", "User5")
        sleep(1)
        select("password", "Password#1")
        sleep(1)
        click("Login")
    }
    
    with_window("Restaurant List Page", timeout = 5) {
        sleep(5)
        select("searchKey", "46843 Trumpet Circle Sterling VA")
        sleep(1)
        select("milesChoice", "10.9663855462185") 
        click("userLocation")
        sleep(5)
        doubleclick("restaurantTable", "{\"cell\":[1,\"Name\"]}")
        sleep(5)
        window_closed("Restaurant List Page")
        window_closed("Application Login")
    }

end
