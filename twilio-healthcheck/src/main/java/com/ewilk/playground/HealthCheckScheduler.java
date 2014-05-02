package com.ewilk.playground;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.HttpResponse;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.SmsFactory;
import com.twilio.sdk.resource.instance.Sms;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.io.IOException;

@Component
public class HealthCheckScheduler{

	private boolean messageSent;
	
	@Scheduled(fixedRate=30000)
	public void checkWebsiteIsRunning() throws TwilioRestException {
		if( HealthCheckData.website != null && !messageSent ) {
			HttpClient client = HttpClientBuilder.create().build();
			HttpGet request = new HttpGet(HealthCheckData.website);
			try {
				HttpResponse response = client.execute(request);
				if( response.getStatusLine().getStatusCode() != 200 ) {
					sendTwilioMessage();
					messageSent = true;
				}
			} catch ( IOException e ) {
				sendTwilioMessage();
			}
		}
	}

	private void sendTwilioMessage() throws TwilioRestException {
		TwilioRestClient client = new TwilioRestClient(HealthCheckData.twilioSid, HealthCheckData.twilioAuthToken);
		Map<String,String> params = new HashMap();
		params.put("Body", "Website " + HealthCheckData.website + " is down!!!");
		params.put("To", HealthCheckData.toNumber);
		params.put("From", HealthCheckData.fromNumber);
		
		SmsFactory smsFactory = client.getAccount().getSmsFactory();
		Sms sms = smsFactory.create(params);
	}
}
