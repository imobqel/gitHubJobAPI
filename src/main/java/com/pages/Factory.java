package com.pages;

public class Factory {
	
	
	private ServiceConfig serviceConfig=null;
	
	
	public ServiceConfig getServiceConfig() {
		
		if(serviceConfig == null) {
			serviceConfig = new ServiceConfig();
		}
		return serviceConfig;
	}


}
