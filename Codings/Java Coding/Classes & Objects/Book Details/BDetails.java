import java.util.Scanner;

class Book {
    String bname, aname;
    int bid;
    float price;

    void get() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter book name:");
        bname = sc.nextLine();
        System.out.println("Enter author name:");
        aname = sc.nextLine();
        System.out.println("Enter book id:");
        bid = sc.nextInt();
        System.out.println("Enter book price:");
        price = sc.nextFloat();
        sc.close();
    }

    void put() {
        System.out.println("****BOOK DETAILS****");
        System.out.println("Book id     :" + bid);
        System.out.println("Book name   :" + bname);
        System.out.println("Author name :" + aname);
        System.out.println("Book price  :" + price);
    }
}

class BDetails {
    public static void main(String args[]) {
        Book b = new Book();
        b.get();
        b.put();
    }
}