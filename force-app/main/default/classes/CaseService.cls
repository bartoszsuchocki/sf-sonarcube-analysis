//  [UnitTest] CaseServiceTest  
public with sharing class CaseService {
    public static Case createCase(String subject) {
        Case caseItem = new Case(
            Subject = subject
        );
        insert caseItem;
        return caseItem;
    }
}