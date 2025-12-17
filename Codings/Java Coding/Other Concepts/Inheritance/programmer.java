class employee {
    float salary;

    employee() {
        this.salary = 50000;
    }
}

class programmer extends employee {
    float bonus;

    programmer() {
        this.bonus = 2000;
    }

    public static void main(String args[]) {
        programmer prg = new programmer();
        float totsal = prg.getsalary(prg.salary, prg.bonus);
        System.out.println("Total salary for programmer is:" + totsal);
    }

    float getsalary(float basicsalary, float bonus) {
        return basicsalary + bonus;
    }
}