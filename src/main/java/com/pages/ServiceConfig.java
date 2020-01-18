package com.pages;



import java.io.IOException;
import java.net.URISyntaxException;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;

public class ServiceConfig {

    

	URIBuilder builder;
    HttpUriRequest httpUriRequest;
    HttpResponse httpResponse;

    public  void createRequest(String url){
        try {
            builder = new URIBuilder(url);
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
    }

    public  void addUrlParameters(String parameters, String value){
        builder.setParameter(parameters, value);
    }



     public  int getStatusCode(){
         return httpResponse.getStatusLine().getStatusCode();
     }


     public JSONArray getResponseBodyJson(){

         JSONArray myObject = null;
         try {
             myObject = new JSONArray(EntityUtils.toString(httpResponse.getEntity()));
         } catch (IOException e) {
             e.printStackTrace();
         }
         return myObject;
     }
     
     

     public void executeService(){

 				try {
 					httpUriRequest=new HttpGet(builder.build());
 					httpResponse = HttpClientBuilder.create().build().execute(httpUriRequest);
 				} catch (IOException | URISyntaxException e ) {
 					e.printStackTrace();
 				}

     }
     
     
     public  String getResponseBody(){

         String content = null;
         try {
             content = EntityUtils.toString(httpResponse.getEntity());
         } catch (IOException e) {
             e.printStackTrace();
         }
         return content;
     }

}
