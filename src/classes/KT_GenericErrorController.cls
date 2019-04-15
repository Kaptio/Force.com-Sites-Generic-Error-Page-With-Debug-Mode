public with sharing class KT_GenericErrorController {
	public String errorMessage { get; set; }
	
	public KT_GenericErrorController() {}

    public void fetchFailingPage() {
    	try {
    		String page;
    		if(System.currentPageReference().getParameters().containsKey('page')){
    			page = System.currentPageReference().getParameters().get('page');
    		}
    		
    		if(page != null){
				errorMessage = new PageReference(page).getContent().toString();
			}
		} catch (Exception e) {
   			errorMessage = e.getTypeName() + ' : ' + e.getMessage();
   		}
   	}
}