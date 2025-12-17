import java.lang.String;

class stringdemo {
    public static void main(String args[]) {
        String s1 = new String("national college");
        String s2 = "NATIONAL COLLEGE";
        System.out.println("The string s1 is                        :" + s1);
        System.out.println("The string s2 is                        :" + s2);
        System.out.println("Length of the string s1 is              :" + s1.length());
        System.out.println("First occurance of t is at the position :" + s1.indexOf('t'));
        System.out.println("The String in upper case                :" + s1.toUpperCase());
        System.out.println("The string in lower case                :" + s2.toLowerCase());
        System.out.println("s1 equals to s2                         :" + s1.equals(s2));
        System.out.println("s1 eqauls ignore case s2                :" + s1.equalsIgnoreCase(s2));
        System.out.println("Character at an index of 6 is           :" + s1.charAt(6));
        String s3 = s1.substring(4, 12);
        System.out.println("Extracted string is                     :" + s3);
        System.out.println("After replacing o with j in s1          :" + s1.replace('o', 'j'));
        String s4 = "This is JAVA string program";
        System.out.println("The String s4 is                        :" + s4);
        System.out.println("After Trim()                            :" + s4.trim());
    }
}
