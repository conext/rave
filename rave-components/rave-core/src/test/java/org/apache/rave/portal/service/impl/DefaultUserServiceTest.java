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

package org.apache.rave.portal.service.impl;

import org.apache.rave.portal.model.Authority;
import org.apache.rave.portal.model.User;
import org.apache.rave.portal.model.util.SearchResult;
import org.apache.rave.portal.repository.UserRepository;
import org.apache.rave.portal.service.impl.DefaultUserService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.List;

import org.apache.rave.portal.service.UserService;
import static org.easymock.EasyMock.createNiceMock;
import static org.easymock.EasyMock.expect;
import static org.easymock.EasyMock.replay;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.CoreMatchers.sameInstance;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

public class DefaultUserServiceTest {

    private static final Long USER_ID = 1234L;
    private UserService service;
    private UserRepository repository;
    private static final String USER_NAME = "1234";
     private static final String USER_EMAIL="test@test.com";

    @Before
    public void setup() {
        repository = createNiceMock(UserRepository.class);
        service = new DefaultUserService(repository);
    }

    @After
    public void tearDown() {
        SecurityContextHolder.clearContext();
    }

    @Test
    public void getAuthenticatedUser_validUser() {
        final User authUser = new User(USER_ID);
        AbstractAuthenticationToken auth = createNiceMock(AbstractAuthenticationToken.class);
        expect(auth.getPrincipal()).andReturn(authUser).anyTimes();
        replay(auth);

        SecurityContext context = new SecurityContextImpl();
        context.setAuthentication(auth);
        SecurityContextHolder.setContext(context);

        User result = service.getAuthenticatedUser();

        assertThat(result, is(sameInstance(authUser)));
    }

    @Test(expected = SecurityException.class)
    public void getAuthenticatedUser_nullAuth() {

        SecurityContext context = new SecurityContextImpl();
        SecurityContextHolder.setContext(context);
        service.getAuthenticatedUser();
    }

    @Test(expected = SecurityException.class)
    public void getAuthenticatedUser_wrongPrincipalType() {
        AbstractAuthenticationToken auth = createNiceMock(AbstractAuthenticationToken.class);
        expect(auth.getPrincipal()).andReturn(USER_ID).anyTimes();
        replay(auth);

        SecurityContext context = new SecurityContextImpl();
        SecurityContextHolder.setContext(context);

        service.getAuthenticatedUser();
    }

    @Test
    public void setAuthenticatedUser_valid() {
        final User authUser = new User(USER_ID);
        expect(repository.get(USER_ID)).andReturn(authUser).anyTimes();
        replay(repository);

        service.setAuthenticatedUser(USER_ID);
        assertThat((User) SecurityContextHolder.getContext().getAuthentication().getPrincipal(),
                is(sameInstance(authUser)));
    }

    @Test
    public void setAuthenticatedUser_validRole() {
        final User authUser = new User(USER_ID);
        final Authority userRole = new Authority();
        userRole.setAuthority("admin");
        authUser.addAuthority(userRole);
        expect(repository.get(USER_ID)).andReturn(authUser).anyTimes();
        replay(repository);

        service.setAuthenticatedUser(USER_ID);
        assertThat((User) SecurityContextHolder.getContext().getAuthentication().getPrincipal(),
                is(sameInstance(authUser)));
        final GrantedAuthority grantedAuthority =
                SecurityContextHolder.getContext().getAuthentication().getAuthorities().iterator().next();
        assertEquals("has authority admin", "admin", grantedAuthority.getAuthority());
    }


    @Test(expected = UsernameNotFoundException.class)
    public void setAuthenticatedUser_invalid_null() {
        expect(repository.get(USER_ID)).andReturn(null).anyTimes();
        replay(repository);

        service.setAuthenticatedUser(USER_ID);
    }

    @Test
    public void loadByUsername_valid() {
        final User authUser = new User(USER_ID, USER_NAME);
        expect(repository.getByUsername(USER_NAME)).andReturn(authUser).anyTimes();
        replay(repository);

        UserDetails result = service.loadUserByUsername(USER_NAME);
        assertThat((User)result, is(sameInstance(authUser)));
    }

    @Test(expected = UsernameNotFoundException.class)
    public void loadByUsername_invalid_exception() {
        expect(repository.getByUsername(USER_NAME)).andThrow(new IncorrectResultSizeDataAccessException(1));
        replay(repository);

        service.setAuthenticatedUser(USER_ID);
    }

    @Test(expected = UsernameNotFoundException.class)
    public void loadByUsername_invalid_null() {
        expect(repository.get(USER_ID)).andReturn(null).anyTimes();
        replay(repository);

        service.setAuthenticatedUser(USER_ID);
    }

     @Test
     public void getUserByEmail_valid() {
          final User authUser=new User(USER_ID,USER_NAME);
          authUser.setEmail(USER_EMAIL);
        expect(repository.getByUserEmail(USER_EMAIL)).andReturn(authUser).anyTimes();
        replay(repository);

        UserDetails result = service.getUserByEmail(USER_EMAIL);
        assertThat((User)result, is(sameInstance(authUser)));          
     }


    @Test
    public void clearAuthentication() {
        SecurityContext context = new SecurityContextImpl();
        SecurityContextHolder.setContext(context);
        service.clearAuthenticatedUser();
        assertThat(SecurityContextHolder.getContext(), not(sameInstance(context)));
    }
    
    @Test
    public void getLimitedListOfUsers() {
        User user1 = new User(123L, "john.doe.sr");
        User user2 = new User(456L, "john.doe.jr");
        List<User> users = new ArrayList<User>();
        users.add(user1);
        users.add(user2);
        final int offset = 0;
        final int pageSize = 10;
        expect(repository.getLimitedList(offset, pageSize)).andReturn(users);
        replay(repository);

        SearchResult<User> result = service.getLimitedListOfUsers(offset, pageSize);
        assertEquals(pageSize, result.getPageSize());
        assertEquals(users.size(), result.getResultSet().size());
        assertEquals(user1, result.getResultSet().get(0));
    }

    @Test
    public void getUsersByFreeTextSearch() {
        final String searchTerm = "Doe";
        User user1 = new User(123L, "john.doe.sr");
        User user2 = new User(456L, "john.doe.jr");
        List<User> users = new ArrayList<User>();
        users.add(user1);
        users.add(user2);
        final int offset = 0;
        final int pageSize = 10;
        expect(repository.findByUsernameOrEmail(searchTerm, offset, pageSize)).andReturn(users);
        replay(repository);

        SearchResult<User> result = service.getUsersByFreeTextSearch(searchTerm, offset, pageSize);
        assertEquals(pageSize, result.getPageSize());
        assertEquals(users.size(), result.getResultSet().size());
        assertEquals(user1, result.getResultSet().get(0));
    }

    @Test
    public void updateUserProfile() {
        User user = new User(USER_ID, USER_NAME);
        expect(repository.save(user)).andReturn(user).once();
        replay(repository);

        service.updateUserProfile(user);
        assertTrue("Save called", true);
    }
}