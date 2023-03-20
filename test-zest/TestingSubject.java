import java.io.*;
import java.util.*;
  
class TestingSubject {
    public static int calculateSum(int n) {
    	int factorial = 1;
    	for(int i = 1; i <= n; i++)
        if(i % 2 == 0) {
    		  factorial *= spawnZero(i);
        } else {
          factorial *= spawnZero(i);
        }
    	return factorial;
    }
    public static int spawnZero(int n) {
    	return n;  
    }
}