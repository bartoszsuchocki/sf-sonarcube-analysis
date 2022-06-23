@isTest
public class SampleChangesGeneratorTest {
    
    @isTest
    static void generateChange_stringReturned() {
        Object change = SampleChangesGenerator.generateChange();
        System.assert(change instanceof String);
    }
}
