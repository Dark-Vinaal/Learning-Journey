import java.io.*;

class arithematicdemo {
    public static void main(String args[]) throws IOException {
        int x = 50, y = 0, z;
        try {
            z = x / y;
            System.out.println("z=" + z);
        } catch (ArithmeticException e) {
            System.out.println(e);
            System.out.println("Zero error");
        }
        System.out.println("End of the program");
    }
}