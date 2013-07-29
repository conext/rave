package uk.co.cloudidentity.rave.portal.resources;

import nl.surfnet.spring.security.opensaml.AuthnRequestGenerator;
import nl.surfnet.spring.security.opensaml.SAMLMessageHandler;
import nl.surfnet.spring.security.opensaml.util.IDService;
import nl.surfnet.spring.security.opensaml.util.TimeService;
import nl.surfnet.spring.security.opensaml.xml.EndpointGenerator;
import org.apache.commons.io.IOUtils;
import org.joda.time.DateTime;
import org.opensaml.saml2.core.AuthnRequest;
import org.opensaml.saml2.metadata.Endpoint;
import org.opensaml.saml2.metadata.SingleSignOnService;
import org.opensaml.ws.message.encoder.MessageEncodingException;
import org.opensaml.xml.security.CriteriaSet;
import org.opensaml.xml.security.credential.Credential;
import org.opensaml.xml.security.credential.CredentialResolver;
import org.opensaml.xml.security.credential.UsageType;
import org.opensaml.xml.security.criteria.EntityIDCriteria;
import org.opensaml.xml.security.criteria.UsageCriteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Properties;

/**
 * @author Lukasz Moren (lukasz.moren@cloudidentity.co.uk)
 */
@Controller
public class AuthnPrefixRequestController {
    private final static Logger LOG = LoggerFactory.getLogger(AuthnPrefixRequestController.class);

    private final TimeService timeService;
    private final IDService idService;

    private SAMLMessageHandler samlMessageHandler;

    private String assertionConsumerServiceURL;

    private String entityID;

    private CredentialResolver credentialResolver;

    private String metaDataProperties;

    public AuthnPrefixRequestController() {
        this.timeService = new TimeService();
        this.idService = new IDService();
    }

    @Required
    public void setCredentialResolver(CredentialResolver cr) {
        this.credentialResolver = cr;
    }

    @Required
    public void setSAMLMessageHandler(SAMLMessageHandler samlMessageHandler) {
        this.samlMessageHandler = samlMessageHandler;
    }

    @Required
    public void setAssertionConsumerServiceURL(String assertionConsumerServiceURL) {
        this.assertionConsumerServiceURL = assertionConsumerServiceURL;
    }

    @Required
    public void setEntityID(final String entityID) {
        this.entityID = entityID;
    }

    @RequestMapping(value = {"/OpenSAML.sso/Login"}, method = RequestMethod.GET)
    public void commence(@RequestParam(value = "target") String target, HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        AuthnRequestGenerator authnRequestGenerator = new AuthnRequestGenerator(entityID, timeService, idService);
        EndpointGenerator endpointGenerator = new EndpointGenerator();

        Endpoint endpoint = endpointGenerator.generateEndpoint(SingleSignOnService.DEFAULT_ELEMENT_NAME, target, assertionConsumerServiceURL);

        AuthnRequest authnReqeust = authnRequestGenerator.generateAuthnRequest(target, assertionConsumerServiceURL);

        LOG.debug("Sending authnRequest to {}", target);

        Credential signingCredential;
        try {
            CriteriaSet criteriaSet = new CriteriaSet();
            criteriaSet.add(new EntityIDCriteria(entityID));
            criteriaSet.add(new UsageCriteria(UsageType.SIGNING));
            signingCredential = credentialResolver.resolveSingle(criteriaSet);

            // Could be injected from somewhere. Not yet needed currently.
            String relayState = null;

            samlMessageHandler.sendSAMLMessage(authnReqeust, endpoint, response, relayState, signingCredential);
        } catch (MessageEncodingException mee) {
            LOG.error("Could not send authnRequest to Identity Provider.", mee);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } catch (org.opensaml.xml.security.SecurityException e) {
            LOG.error("Could not send authnRequest to Identity Provider.", e);
        }
    }

    @RequestMapping(value = {"/OpenSAML.sso/Metadata"}, method = RequestMethod.GET)
    public void metaData(HttpServletResponse response) throws IOException {
    /*
     * see https://rnd.feide.no/2010/01/05/
     * metadata_aggregation_requirements_specification/#section_5_5_3
     */
        response.setHeader("Content-Type", "application/xml");
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");

        String result = IOUtils.toString(new ClassPathResource("metadata-template-sp.xml").getInputStream());

        String serviceURL = assertionConsumerServiceURL.replace("AssertionConsumerService", "portal/AssertionConsumerService");

        result = result.replace("%VALID_UNTIL%", df.format(new DateTime().toDateMidnight().toDateTime().plusDays(1).toDate()));
        result = result.replace("%ENTITY_ID%", entityID);
        result = result.replace("%ASSERTION_CONSUMER_SERVICE_URL%", serviceURL);

        Properties props = new Properties();
        props.load(new ClassPathResource("metadata.defaults.properties").getInputStream());

        if (StringUtils.hasText(metaDataProperties)) {
            ClassPathResource classPathResource = new ClassPathResource(metaDataProperties);
            if (classPathResource.exists()) {
                props.load(classPathResource.getInputStream());
            }
        }

        result = result.replace("%NAMEID_FORMAT%", props.getProperty("nameid-format"));

        result = result.replace("%SERVICE_NAME_EN%", props.getProperty("service-name-en"));
        result = result.replace("%SERVICE_NAME_NL%", props.getProperty("service-name-nl"));
        result = result.replace("%SERVICE_DESCRIPTION_EN%", props.getProperty("service-description-en"));
        result = result.replace("%SERVICE_DESCRIPTION_NL%", props.getProperty("service-description-nl"));

        result = result.replace("%CONTACT_PERSON_ADMINISTRATIVE_GIVEN_NAME%", props.getProperty("contact-person-administrative-given-name"));
        result = result.replace("%CONTACT_PERSON_ADMINISTRATIVE_SUR_NAME%", props.getProperty("contact-person-administrative-sur-name"));
        result = result.replace("%CONTACT_PERSON_ADMINISTRATIVE_EMAIL%", props.getProperty("contact-person-administrative-email"));

        result = result.replace("%CONTACT_PERSON_TECHNICAL_GIVEN_NAME%", props.getProperty("contact-person-technical-given-name"));
        result = result.replace("%CONTACT_PERSON_TECHNICAL_SUR_NAME%", props.getProperty("contact-person-technical-sur-name"));
        result = result.replace("%CONTACT_PERSON_TECHNICAL_EMAIL%", props.getProperty("contact-person-technical-email"));

        result = result.replace("%CONTACT_PERSON_SUPPORT_GIVEN_NAME%", props.getProperty("contact-person-support-given-name"));
        result = result.replace("%CONTACT_PERSON_SUPPORT_SUR_NAME%", props.getProperty("contact-person-support-sur-name"));
        result = result.replace("%CONTACT_PERSON_SUPPORT_EMAIL%", props.getProperty("contact-person-support-email"));

        response.getOutputStream().write(result.getBytes());
        response.flushBuffer();

    }

    public void setMetaDataProperties(String metaDataProperties) {
        this.metaDataProperties = metaDataProperties;
    }
}