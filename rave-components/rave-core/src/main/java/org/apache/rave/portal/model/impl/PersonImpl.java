package org.apache.rave.portal.model.impl;

import org.apache.rave.portal.model.*;

import java.util.List;

public class PersonImpl implements Person {

    protected String username;
    protected String email;
    protected String displayName;
    protected String additionalName;
    protected String familyName;
    protected String givenName;
    protected String honorificPrefix;
    protected String honorificSuffix;
    protected String preferredName;
    protected String aboutMe;
    protected String status;
    protected List<Address> addresses;
    protected List<Organization> organizations;
    protected List<PersonProperty> properties;
    protected List<Person> friends;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getAdditionalName() {
        return additionalName;
    }

    public void setAdditionalName(String additionalName) {
        this.additionalName = additionalName;
    }

    public String getFamilyName() {
        return familyName;
    }

    public void setFamilyName(String familyName) {
        this.familyName = familyName;
    }

    public String getGivenName() {
        return givenName;
    }

    public void setGivenName(String givenName) {
        this.givenName = givenName;
    }

    public String getHonorificPrefix() {
        return honorificPrefix;
    }

    public void setHonorificPrefix(String honorificPrefix) {
        this.honorificPrefix = honorificPrefix;
    }

    public String getHonorificSuffix() {
        return honorificSuffix;
    }

    public void setHonorificSuffix(String honorificSuffix) {
        this.honorificSuffix = honorificSuffix;
    }

    public String getPreferredName() {
        return preferredName;
    }

    public void setPreferredName(String preferredName) {
        this.preferredName = preferredName;
    }

    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }

    public List<Organization> getOrganizations() {
        return organizations;
    }

    public void setOrganizations(List<Organization> organizations) {
        this.organizations = organizations;
    }

    public List<PersonProperty> getProperties() {
        return properties;
    }

    public void setProperties(List<PersonProperty> properties) {
        this.properties = properties;
    }

    public List<Person> getFriends() {
        return friends;
    }

    public void setFriends(List<Person> friends) {
        this.friends = friends;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PersonImpl)) return false;

        PersonImpl person = (PersonImpl) o;

        if (aboutMe != null ? !aboutMe.equals(person.aboutMe) : person.aboutMe != null) return false;
        if (additionalName != null ? !additionalName.equals(person.additionalName) : person.additionalName != null)
            return false;
        if (addresses != null ? !addresses.equals(person.addresses) : person.addresses != null) return false;
        if (displayName != null ? !displayName.equals(person.displayName) : person.displayName != null) return false;
        if (email != null ? !email.equals(person.email) : person.email != null) return false;
        if (familyName != null ? !familyName.equals(person.familyName) : person.familyName != null) return false;
        if (friends != null ? !friends.equals(person.friends) : person.friends != null) return false;
        if (givenName != null ? !givenName.equals(person.givenName) : person.givenName != null) return false;
        if (honorificPrefix != null ? !honorificPrefix.equals(person.honorificPrefix) : person.honorificPrefix != null)
            return false;
        if (honorificSuffix != null ? !honorificSuffix.equals(person.honorificSuffix) : person.honorificSuffix != null)
            return false;
        if (organizations != null ? !organizations.equals(person.organizations) : person.organizations != null)
            return false;
        if (preferredName != null ? !preferredName.equals(person.preferredName) : person.preferredName != null)
            return false;
        if (properties != null ? !properties.equals(person.properties) : person.properties != null) return false;
        if (status != null ? !status.equals(person.status) : person.status != null) return false;
        if (username != null ? !username.equals(person.username) : person.username != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = username != null ? username.hashCode() : 0;
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (displayName != null ? displayName.hashCode() : 0);
        result = 31 * result + (additionalName != null ? additionalName.hashCode() : 0);
        result = 31 * result + (familyName != null ? familyName.hashCode() : 0);
        result = 31 * result + (givenName != null ? givenName.hashCode() : 0);
        result = 31 * result + (honorificPrefix != null ? honorificPrefix.hashCode() : 0);
        result = 31 * result + (honorificSuffix != null ? honorificSuffix.hashCode() : 0);
        result = 31 * result + (preferredName != null ? preferredName.hashCode() : 0);
        result = 31 * result + (aboutMe != null ? aboutMe.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (addresses != null ? addresses.hashCode() : 0);
        result = 31 * result + (organizations != null ? organizations.hashCode() : 0);
        result = 31 * result + (properties != null ? properties.hashCode() : 0);
        result = 31 * result + (friends != null ? friends.hashCode() : 0);
        return result;
    }
}