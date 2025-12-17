class invalidageexception extends Exception {
    public invalidageexception(String str) {
        super(str);
    }
}

public class testexceptdemo {
    static void validate(int age) throws invalidageexception {
        if (age < 18) {
            throw new invalidageexception("Age is not valid to vote");
        } else {
            System.out.println("Welcome to vote");
        }
    }

    public static void main(String args[]) {
        try {
            validate(13);
        } catch (invalidageexception ex) {
            System.out.println("Caught the exception");
            System.out.println("Exception occured:" + ex);
        } finally {
            System.out.println("Rest of the code");
        }
    }
}