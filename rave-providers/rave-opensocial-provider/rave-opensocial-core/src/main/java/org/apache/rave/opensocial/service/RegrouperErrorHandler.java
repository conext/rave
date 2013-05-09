package org.apache.rave.opensocial.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.web.client.ResponseErrorHandler;

import java.io.IOException;

/**
 * Maciej Machulak (maciej.machulak@cloudidentity.co.uk)
 */
public class RegrouperErrorHandler implements ResponseErrorHandler {

    public static final Logger logger = LoggerFactory.getLogger(RegrouperErrorHandler.class);

    private int returnCode;

    public RegrouperErrorHandler(int returnCode) {
        this.returnCode = returnCode;
    }

    @Override
    public boolean hasError(ClientHttpResponse response) throws IOException {
        return response.getStatusCode().value() != returnCode;
    }

    @Override
    public void handleError(ClientHttpResponse response) throws IOException {
        logger.error("Connection with Regrouper failed: {} ", response);
    }
}
