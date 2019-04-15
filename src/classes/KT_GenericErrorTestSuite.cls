/**
* @author Vadim
* @date 10-04-2019
* @description Test class for EmailBatcher
*/

@isTest
private class KT_GenericErrorTestSuite {
	@isTest
	private static void testProcessEmails() {
		System.Test.startTest();
	
		PageReference testPage = Page.KT_GenericError;
		testPage.getParameters().put('page', '/page_does_not_exist');
		Test.setCurrentPage(testPage);
		KT_GenericErrorController ctrl = new KT_GenericErrorController();
		ctrl.fetchFailingPage();
		System.Test.stopTest();

		System.assertNotEquals(null, ctrl.errorMessage, 'Error message should be displayed as test page does not exist');
	}

}