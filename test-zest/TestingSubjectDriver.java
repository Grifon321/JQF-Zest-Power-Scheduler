import java.io.*;
import java.util.*;
import static org.junit.Assert.*;
import static org.junit.Assume.*;

import org.junit.runner.RunWith;
import com.pholser.junit.quickcheck.*;
import com.pholser.junit.quickcheck.generator.*;
import edu.berkeley.cs.jqf.fuzz.*;

@RunWith(JQF.class)  
public class TestingSubjectDriver {
    // @From(TestingSubjectGenerator.class) int n
    @Fuzz
    public void testCalculateSum(int n) {
    	int factorial = 1;
    	for(int i = 1; i <= n; i++)
    		factorial *= i;
    	assumeTrue(TestingSubject.calculateSum(n) == factorial);
    }
    @Fuzz
    public void testSpawnZero(int n) {
    	assumeTrue(TestingSubject.spawnZero(n) == n);
    }
}