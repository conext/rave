/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.apache.rave.rest.impl;

import org.apache.rave.model.FriendRequest;
import org.apache.rave.portal.service.UserService;
import org.apache.rave.rest.PeopleResource;
import org.apache.rave.rest.model.Person;

import javax.ws.rs.core.Response;

public class DefaultPeopleResource implements PeopleResource {

    private UserService userService;

    @Override
    public Response getPeople() {
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override
    public Response getPerson(String id) {
        org.apache.rave.model.Person person = userService.getUserById(id);
        if (person != null) {
            return Response.ok(new Person(person)).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }

    @Override
    public Response getFriends(String id) {
        return Response.ok("Friends").build();
    }

    @Override
    public Response getFriend(String id, String friendID) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Response deleteFriend(String id, String friendID) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Response getRequests(String id) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Response createRequest(String id, FriendRequest request) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Response getRequest(String id, String requestID) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Response deleteRequest(String id, String requestID) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
