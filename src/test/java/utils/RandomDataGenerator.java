package utils;

import cucumber.api.java.it.Ma;

public class RandomDataGenerator {
    public static int RandomIdGenertor(int lower, int upper) {
        int random_id = (int)Math.floor((Math.random())* (upper-lower+1)+lower);
        return random_id;

    }

}
