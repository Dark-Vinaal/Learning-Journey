class MultiThread extends Thread {
    public void run() {
        float t = 15 / 0;
        System.out.println(t);
    }
}

class Fibbo extends Thread {
    public void run() {
        System.out.println("2ndThread:Fibonacci Series started..");
        int f = 0, s = 1, t, i, MAX = 10;
        System.out.println(f + "\n" + s);
        for (i = 2; i < MAX; i++) {
            try {
                if (i == 7) {
                    System.out.println("Second Thread is sleeping for 10 Sec.");
                    Thread.sleep(10000);
                    System.out.println("Second Thread is resumes its execution...");
                }
            } catch (Exception e) {
                System.out.println("An Exception has occured...." + e);
            }
            t = f + s;
            System.out.println(t);
            f = s;
            s = t;
        }
    }
}

public class MultithreadDemo {
    public static void main(String args[]) {
        MultiThread m1 = new MultiThread();
        m1.start();
        Fibbo f1 = new Fibbo();
        f1.start();
    }
}