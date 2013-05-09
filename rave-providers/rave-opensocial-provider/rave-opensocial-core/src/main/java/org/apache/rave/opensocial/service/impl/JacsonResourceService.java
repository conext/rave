package org.apache.rave.opensocial.service.impl;

import com.google.caja.util.Lists;
import nl.surfnet.coin.api.client.domain.Group20;
import nl.surfnet.coin.api.client.domain.Group20Entry;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.rave.opensocial.service.RegrouperErrorHandler;
import org.apache.shindig.auth.SecurityToken;
import org.apache.shindig.protocol.ProtocolException;
import org.apache.shindig.social.core.model.ResourceImpl;
import org.apache.shindig.social.opensocial.model.Resource;
import org.apache.shindig.social.opensocial.spi.ResourceService;
import org.apache.shindig.social.opensocial.spi.UserId;
import org.codehaus.jackson.map.ObjectMapper;
import org.scribe.builder.ServiceBuilder;
import org.scribe.model.*;
import org.scribe.oauth.OAuthService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.http.*;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/**
 * Maciej Machulak (maciej.machulak@cloudidentity.co.uk)
 */
public class JacsonResourceService implements ResourceService {

    private Logger logger = LoggerFactory.getLogger(JacsonResourceService.class);

    private final static String OAUTH_OPENCONEXT_API_READ_SCOPE = "read";

    private String oauthKey;
    private String oauthSecret;
    private String apiLocation;

    private static final String REGROUP_PARAM = "groupId";

    private String regrouperApiLocation;
    private String username;
    private String password;

    private RestTemplate restTemplate;

    @Override
    public Future<Resource> getResources(
            UserId userId,
            String requestedGroupId,
            SecurityToken token) throws ProtocolException {

        // Get all groups about the user
        OAuthService service = new ServiceBuilder()
                .provider(new OpenConextApi10aTwoLegged())
                .apiKey(oauthKey)
                .apiSecret(oauthSecret)
                .scope(OAUTH_OPENCONEXT_API_READ_SCOPE)
                .callback("oob")
                .signatureType(SignatureType.QueryString)
                .debug()
                .build();

        OAuthRequest req = new OAuthRequest(Verb.GET, apiLocation + "social/rest/groups/" + userId.getUserId(token));
        service.signRequest(new Token("", ""), req);
        Response response = req.send();

        final String bodyText = response.getBody();
        logger.debug("Response body: {}", bodyText);


        ObjectMapper om = new ObjectMapper();
        Group20Entry group20Entry1 = null;
        try {
            group20Entry1 = om.readValue(bodyText, Group20Entry.class);
        } catch (IOException e) {
            logger.error("Unable to parse JSON", e);
            group20Entry1 = new Group20Entry();
        }

        final List<Group20> entry = group20Entry1.getEntry();

        // Check if the user is in the required group
        boolean groupMatch = false;
        for (Group20 group20 : entry) {
            if (group20.getId().equals(requestedGroupId)) {
                groupMatch = true;
                break;
            }
        }

        if (groupMatch) {

            final Resource resourceImpl = new ResourceImpl();

            DefaultHttpClient client = new DefaultHttpClient();
            client.getCredentialsProvider().setCredentials(
                    new AuthScope(AuthScope.ANY),
                    new UsernamePasswordCredentials(username,password));
            HttpComponentsClientHttpRequestFactory factory =  new HttpComponentsClientHttpRequestFactory(client);

            this.restTemplate = new RestTemplate(factory);
            this.restTemplate.setErrorHandler(new RegrouperErrorHandler(200));

            Map<String, String> vars = Collections.singletonMap(REGROUP_PARAM, requestedGroupId);
            String rsp = restTemplate.getForObject(regrouperApiLocation, String.class, vars);
            resourceImpl.setResource(rsp);

            return new Future<Resource>() {
                public boolean cancel(final boolean b) {
                    return false;
                }

                public boolean isCancelled() {
                    return false;
                }

                public boolean isDone() {
                    return true;
                }

                public Resource get() throws InterruptedException, ExecutionException {
                    return resourceImpl;
                }

                public Resource get(final long l, final TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
                    return resourceImpl;
                }
            };
        } else {
            return null;
        }

    }

    @Override
    public Future<Resource> createResource(
            UserId userId,
            String requestedGroupId,
            String resourceObj,
            SecurityToken token) throws ProtocolException {

        // Get all groups about the user
        OAuthService service = new ServiceBuilder()
                .provider(new OpenConextApi10aTwoLegged())
                .apiKey(oauthKey)
                .apiSecret(oauthSecret)
                .scope(OAUTH_OPENCONEXT_API_READ_SCOPE)
                .callback("oob")
                .signatureType(SignatureType.QueryString)
                .debug()
                .build();

        OAuthRequest req = new OAuthRequest(Verb.GET, apiLocation + "social/rest/groups/" + userId.getUserId(token));
        service.signRequest(new Token("", ""), req);
        Response response = req.send();

        final String bodyText = response.getBody();
        logger.debug("Response body: {}", bodyText);

        ObjectMapper om = new ObjectMapper();
        Group20Entry group20Entry1 = null;
        try {
            group20Entry1 = om.readValue(bodyText, Group20Entry.class);
        } catch (IOException e) {
            logger.error("Unable to parse JSON", e);
            group20Entry1 = new Group20Entry();
        }

        final List<Group20> entry = group20Entry1.getEntry();

        // Check if the user is in the required group
        boolean groupMatch = false;
        for (Group20 group20 : entry) {
            if (group20.getId().equals(requestedGroupId)) {
                groupMatch = true;
                break;
            }
        }

        if (groupMatch) {

            final Resource resourceImpl = new ResourceImpl();

            DefaultHttpClient client = new DefaultHttpClient();
            client.getCredentialsProvider().setCredentials(
                    new AuthScope(AuthScope.ANY),
                    new UsernamePasswordCredentials(username,password));
            HttpComponentsClientHttpRequestFactory factory =  new HttpComponentsClientHttpRequestFactory(client);

            this.restTemplate = new RestTemplate(factory);
            this.restTemplate.setErrorHandler(new RegrouperErrorHandler(201));

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.setAcceptCharset(Lists.newArrayList(Charset.forName("utf-8")));

            HttpEntity httpEntity = new HttpEntity<String>(resourceObj, headers);

            Map<String, String> vars = Collections.singletonMap(REGROUP_PARAM, requestedGroupId);
            ResponseEntity<String> responseEntity =
                    restTemplate.exchange(regrouperApiLocation, HttpMethod.PUT, httpEntity, String.class, vars);

            resourceImpl.setResource(responseEntity.getBody());

            return new Future<Resource>() {
                public boolean cancel(final boolean b) {
                    return false;
                }

                public boolean isCancelled() {
                    return false;
                }

                public boolean isDone() {
                    return true;
                }

                public Resource get() throws InterruptedException, ExecutionException {
                    return resourceImpl;
                }

                public Resource get(final long l, final TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
                    return resourceImpl;
                }
            };
        } else {
            return null;
        }
    }

    @Override
    public Future<Resource> deleteResource(
            UserId userId,
            String requestedGroupId,
            String resourceId,
            SecurityToken token) throws ProtocolException {

        // Get all groups about the user
        OAuthService service = new ServiceBuilder()
                .provider(new OpenConextApi10aTwoLegged())
                .apiKey(oauthKey)
                .apiSecret(oauthSecret)
                .scope(OAUTH_OPENCONEXT_API_READ_SCOPE)
                .callback("oob")
                .signatureType(SignatureType.QueryString)
                .debug()
                .build();

        OAuthRequest req = new OAuthRequest(Verb.GET, apiLocation + "social/rest/groups/" + userId.getUserId(token));
        service.signRequest(new Token("", ""), req);
        Response response = req.send();

        final String bodyText = response.getBody();
        logger.debug("Response body: {}", bodyText);


        ObjectMapper om = new ObjectMapper();
        Group20Entry group20Entry1 = null;
        try {
            group20Entry1 = om.readValue(bodyText, Group20Entry.class);
        } catch (IOException e) {
            logger.error("Unable to parse JSON", e);
            group20Entry1 = new Group20Entry();
        }

        final List<Group20> entry = group20Entry1.getEntry();

        // Check if the user is in the required group
        boolean groupMatch = false;
        for (Group20 group20 : entry) {
            if (group20.getId().equals(requestedGroupId)) {
                groupMatch = true;
                break;
            }
        }

        if (groupMatch) {

            final Resource resourceImpl = new ResourceImpl();

            DefaultHttpClient client = new DefaultHttpClient();
            client.getCredentialsProvider().setCredentials(
                    new AuthScope(AuthScope.ANY),
                    new UsernamePasswordCredentials(username,password));
            HttpComponentsClientHttpRequestFactory factory =  new HttpComponentsClientHttpRequestFactory(client);

            this.restTemplate = new RestTemplate(factory);
            this.restTemplate.setErrorHandler(new RegrouperErrorHandler(200));

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);

            HttpEntity httpEntity = new HttpEntity<String>(resourceId, headers);

            Map<String, String> vars = Collections.singletonMap(REGROUP_PARAM, requestedGroupId);
            ResponseEntity<String> responseEntity =
                    restTemplate.exchange(regrouperApiLocation, HttpMethod.DELETE, httpEntity, String.class, vars);

            resourceImpl.setResource(responseEntity.getBody());

            return new Future<Resource>() {
                public boolean cancel(final boolean b) {
                    return false;
                }

                public boolean isCancelled() {
                    return false;
                }

                public boolean isDone() {
                    return true;
                }

                public Resource get() throws InterruptedException, ExecutionException {
                    return resourceImpl;
                }

                public Resource get(final long l, final TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
                    return resourceImpl;
                }
            };
        } else {
            return null;
        }

    }

    @Required
    public void setOauthKey(final String oauthKey) {
        this.oauthKey = oauthKey;
    }

    @Required
    public void setOauthSecret(final String oauthSecret) {
        this.oauthSecret = oauthSecret;
    }

    @Required
    public void setApiLocation(final String apiLocation) {
        this.apiLocation = apiLocation;
    }

    @Required
    public void setRegrouperApiLocation(String regrouperApiLocation) {
        this.regrouperApiLocation = regrouperApiLocation;
    }

    @Required
    public void setUsername(String username) {
        this.username = username;
    }

    @Required
    public void setPassword(String password) {
        this.password = password;
    }

}
