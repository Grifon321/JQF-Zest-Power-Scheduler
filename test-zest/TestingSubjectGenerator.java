import com.pholser.junit.quickcheck.generator.GenerationStatus;
import com.pholser.junit.quickcheck.generator.Generator;
import com.pholser.junit.quickcheck.random.SourceOfRandomness;

public class TestingSubjectGenerator {

    public static class SimpleGenerator extends Generator<Integer> {
        public SimpleGenerator() {
            super(Integer.class);
        }

        @Override
        public Integer generate(SourceOfRandomness sourceOfRandomness, GenerationStatus generationStatus) {
            return sourceOfRandomness.nextInt(100) + 1;
        }
    }

}