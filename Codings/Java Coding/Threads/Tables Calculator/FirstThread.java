class Table implements Runnable {
    public void run() {
        System.out.println("Thread Started its execution....");
        for (int i = 1; i <= 10; i++) {
            System.out.println(i + " * 6 =" + (i * 6));
        }
        System.out.println("Thread completed its execution....");
    }
}

public class FirstThread {
    public static void main(String args[]) {
        Table r = new Table();
        Thread t = new Thread(r);
        t.start();
    }
}