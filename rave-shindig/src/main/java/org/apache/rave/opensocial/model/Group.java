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
import java.util.List;

/**
 * Represents a group in the social database. The assumption in this object is that groups are
 * associated with individuals and are used by those individuals to manage people.
 */
@Entity
@Table(name = "groups")
@SequenceGenerator(name = "groupIdSeq", sequenceName = "group_id_seq")
public class Group implements BasicEntity {
    /**
     * The internal object ID used for references to this object. Should be generated by the
     * underlying storage mechanism
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "groupIdSeq")
    @Column(name = "id")
    protected Long id;

    /**
     * Each group has a group name.
     */
    @Basic
    @Column(name = "name")
    protected String title;


    @Basic
    @Column(name = "description")
    protected String description;


    /**
     * There is a single owner of a group.
     */
    @ManyToOne
    @JoinColumn(name = "owner_id", referencedColumnName = "id")
    protected Person owner;

    /**
     * There are many members of a group.
     */
    @ManyToMany
    @JoinTable(name = "group_members",
            joinColumns =
            @JoinColumn(name = "group_id", referencedColumnName = "id"),
            inverseJoinColumns =
            @JoinColumn(name = "person_id", referencedColumnName = "id"))
    protected List<Person> members;

    /**
     * @return the owner
     */
    public Person getOwner() {
        return owner;
    }

    /**
     * @param owner the owner to set
     */
    public void setOwner(Person owner) {
        this.owner = owner;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the members
     */
    public List<Person> getMembers() {
        return members;
    }

    /**
     * @param members the members to set
     */
    public void setMembers(List<Person> members) {
        this.members = members;
    }

    public String getTitle() {
        return title;
    }

    /**
     * @param title the name of hte group
     */
    public void setTitle(String title) {
        this.title  = title;
    }

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}
