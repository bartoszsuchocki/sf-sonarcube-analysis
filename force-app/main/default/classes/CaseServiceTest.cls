@isTest
public class CaseServiceTest {
    
    @isTest
    static void createCase_subjectProvided_caseCreated() {
        String subject = 'test';

        Test.startTest();
            CaseService.createCase(subject);
        Test.stopTest();

        List<Case> cases = [SELECT Id FROM Case WHERE Subject = :subject];
        System.assertEquals(1, cases.size());
    }
}