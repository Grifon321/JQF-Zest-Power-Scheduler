import java.io.*;
import java.util.*;
import java.util.Random;
  
class TestingSubject {
    public static int calculateSum(int n) {
      Random rand = new Random();
    	int factorial = 1;
    	for(int i = 1; i <= n; i++)
        if(i % 2 == 0) {
          if(rand.nextInt(10) + 1 % 3 == 0) {
    		    factorial *= spawnZero(i);
          } else {
            factorial *= spawnZero(i);
          }
        } else {
          factorial *= spawnZero(i);
        }
    	return factorial;
    }
    public static int spawnZero(int n) {
    	return n;  
    }
}