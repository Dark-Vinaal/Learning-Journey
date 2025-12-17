import java.util.*;

class vectordemo {
    public static void main(String args[]) {
        Vector<Object> v1 = new Vector<>();
        v1.add(1);
        v1.add(2);
        v1.add("Apple");
        v1.add("Vivo");
        v1.add("Oppo");
        System.out.println("**********VECTOR MANIPULATION**********");
        System.out.println("\n The vector v1 contains");
        System.out.println(v1);
        System.out.println("\n After replacement 1 by Samsung");
        v1.set(0, "Samsung");
        System.out.println("The new vector is:" + v1);
        System.out.println("After deleting 2 from vector");
        v1.remove(1);
        System.out.println(v1);
    }
}
