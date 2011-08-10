/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.apache.rave.opensocial.model;

import org.apache.rave.persistence.BasicEntity;

import javax.persistence.*;

/**
 */
@Entity
@Table(name = "address")
@SequenceGenerator(name = "addressIdSeq", sequenceName = "address_id_seq")
public class Address implements org.apache.shindig.social.opensocial.model.Address, BasicEntity {

    /**
     * The internal object ID used for references to this object. Should be generated by the
     * underlying storage mechanism
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "addressIdSeq")
    @Column(name = "id")
    private Long id;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "country", length = 255)
    private String country;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "latitude")
    private Float latitude;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "longitude")
    private Float longitude;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "locality", length = 255)
    private String locality;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "postal_code", length = 255)
    private String postalCode;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "region", length = 255)
    private String region;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "street_address", length = 255)
    private String streetAddress;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "type", length = 255)
    private String type;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "formatted", length = 255)
    private String formatted;

    /**
     * model field.
     *
     * @see org.apache.shindig.social.opensocial.model.Address
     */
    @Basic
    @Column(name = "primary_address")
    private Boolean primary;

    /**
     * default constructor
     */
    public Address() {
    }

    /**
     * Create an address from the formatted address, no parsing of the address will be performed.
     *
     * @param formatted the formatted address.
     */
    public Address(String formatted) {
        this.formatted = formatted;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getCountry()
     */
    public String getCountry() {
        return country;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setCountry(String)
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getLatitude()
     */
    public Float getLatitude() {
        return latitude;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setLatitude(Float)
     */
    public void setLatitude(Float latitude) {
        this.latitude = latitude;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getLocality()
     */
    public String getLocality() {
        return locality;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setLocality(String)
     */
    public void setLocality(String locality) {
        this.locality = locality;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getLongitude()
     */
    public Float getLongitude() {
        return longitude;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setLongitude(Float)
     */
    public void setLongitude(Float longitude) {
        this.longitude = longitude;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getPostalCode()
     */
    public String getPostalCode() {
        return postalCode;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setPostalCode(String)
     */
    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getRegion()
     */
    public String getRegion() {
        return region;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setRegion(String)
     */
    public void setRegion(String region) {
        this.region = region;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getStreetAddress()
     */
    public String getStreetAddress() {
        return streetAddress;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setStreetAddress(String)
     */
    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getType()
     */
    public String getType() {
        return type;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setType(String)
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getFormatted()
     */
    public String getFormatted() {
        return formatted;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setFormatted(String)
     */
    public void setFormatted(String formatted) {
        this.formatted = formatted;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#getPrimary()
     */
    public Boolean getPrimary() {
        return primary;
    }

    /**
     * {@inheritDoc}
     *
     * @see org.apache.shindig.social.opensocial.model.Address#setPrimary(Boolean)
     */
    public void setPrimary(Boolean primary) {
        this.primary = primary;
    }

    /**
     * @return the objectId
     */
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
