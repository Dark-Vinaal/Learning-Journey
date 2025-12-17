import java.util.*;

class minvalue {
    public static void main(String args[]) {
        int n1, n2;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the first number:");
        n1 = sc.nextInt();
        System.out.println("Enter the second number:");
        n2 = sc.nextInt();
        System.out.println("The minimum of " + n1 + " and " + n2 + " is :" + min1(n1, n2));
        sc.close();
    }

    public static int min1(int x, int y) {
        int min;
        if (x < y) {
            min = x;
        } else {
            min = y;
        }
        return (min);
    }
}
