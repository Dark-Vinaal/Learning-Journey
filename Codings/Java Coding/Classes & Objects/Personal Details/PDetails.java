import java.util.*;

class person {
    String pname;
    int age;
    long mob;

    void get() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the person's name :");
        pname = sc.nextLine();
        System.out.println("Enter the age :");
        age = sc.nextInt();
        System.out.println("Enter the mobile number :");
        mob = sc.nextLong();
        sc.close();
    }

    void put() {
        System.out.println("****PERSONAL DETAILS****");
        System.out.println("Name         :" + pname);
        System.out.println("Age          :" + age);
        System.out.println("Mobile number:" + mob);
    }
}

class pdetails {
    public static void main(String args[]) {
        person pr = new person();
        pr.get();
        pr.put();
    }
}