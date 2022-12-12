public class DemoMOTD {
    
    static String motd = 'initial message';
    
    static public String getMOTD() {
        return motd;
    }
    
  	@future(callout=true)  
    static public void retrieveMOTD() {
        String jsonResponse;
        
        if (Test.isRunningTest()) {
            jsonResponse = '[{"text": "Genius is one percent inspiration and ninety-nine percent perspiration.","author": "Thomas Edison"}]';
        } else {
            Http httpProtocol = new Http();
            HttpRequest request = new HttpRequest();
            String endpoint = 'https://type.fit/api/quotes';
            request.setEndpoint(endpoint);
            request.setMethod('GET');
            HttpResponse response = httpProtocol.send(request);
            System.debug(response.getBody());
            jsonResponse = response.getBody();
        }
        JSONParser parser = JSON.createParser(jsonResponse);
        String[] messages = new String[]{};
        String[] authors = new String[]{};
        
        while (parser.nextToken() != null) {
            JSONToken token = parser.getCurrentToken();
            if ((token==JSONToken.FIELD_NAME) && 
                	(parser.getText()=='text')) {
            	parser.nextToken();
                messages.add(parser.getText());
            }
            else if ((token==JSONToken.FIELD_NAME) && 
                     (parser.getText()=='author')) {
				parser.nextToken();
                authors.add(parser.getText());
            }
        }
        Integer noOfMessages = messages.size();
        Integer randomNo = Integer.valueOf(Math.random() * noOfMessages);
		motd = messages[randomNo] + ' - ' + authors[randomNo];   
   }

}