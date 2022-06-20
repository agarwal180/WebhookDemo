/*****************************************
 Author : Subham Agarwal
Description : 	class to handle Webhook from Github
Date : 06/20/2022
 * ***************************************/
@RestResource(urlMapping='/api/Webhooks/pushDetailsdemo/*')
global with sharing class WebHookSubscriptionDemo {

    @HttpPost
    global static void handleNotification(){
        
        try{
            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
            System.debug('Request ' + request.requestBody.toString());
        }catch(Exception e){
            System.debug('Exception happened : ' + e.getMessage());
        }
    }
}