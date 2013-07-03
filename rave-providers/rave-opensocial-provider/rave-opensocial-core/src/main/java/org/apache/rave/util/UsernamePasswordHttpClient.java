package org.apache.rave.util;

import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.springframework.beans.factory.annotation.Required;

import javax.annotation.PostConstruct;

/**
 * @author Lukasz Moren (lukasz.moren@cloudidentity.co.uk)
 */
public class UsernamePasswordHttpClient extends DefaultHttpClient {

    private String username;
    private String password;

    public UsernamePasswordHttpClient(ClientConnectionManager conman, HttpParams params) {
        super(conman, params);
    }

    public UsernamePasswordHttpClient(ClientConnectionManager conman) {
        super(conman);
    }

    public UsernamePasswordHttpClient(HttpParams params) {
        super(params);
    }

    public UsernamePasswordHttpClient() {
    }

    @PostConstruct
    public void initClient() {
        getCredentialsProvider().setCredentials(
                new AuthScope(AuthScope.ANY),
                new UsernamePasswordCredentials(username, password));
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
