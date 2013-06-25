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

package org.apache.rave.portal.web.controller.util;

import nl.surfnet.coin.api.client.domain.Group20;
import nl.surfnet.coin.api.client.domain.Group20Entry;
import nl.surfnet.coin.api.client.internal.OpenConextApi10aTwoLegged;
import org.apache.rave.model.User;
import org.apache.rave.portal.web.model.NavigationItem;
import org.apache.rave.portal.web.model.NavigationMenu;
import org.apache.rave.portal.web.util.ViewNames;
import org.codehaus.jackson.map.ObjectMapper;
import org.scribe.builder.ServiceBuilder;
import org.scribe.model.*;
import org.scribe.oauth.OAuthService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

public class ControllerUtils {
    private static final Logger log = LoggerFactory.getLogger(ControllerUtils.class);

    private static String oauthKey = "https://rave.dev.surfconext.nl/asdf";
    private static String oauthSecret = "mysecret";
    private static String apiLocation = "https://api.collaborate.jiscadvance.biz/v1/";


    /**
     * Utility function to determine if this HttpServletRequest
     * is coming from a mobile client
     *
     * @param request the HttpServletRequest from the client
     * @return true if the client is a mobile device, false if not mobile
     */
    public static boolean isMobileDevice(HttpServletRequest request) {
        return DeviceUtils.getCurrentDevice(request).isMobile();
    }

    public static String getDeviceAppropriateView(HttpServletRequest request, String defaultView, String mobileView) {
        // return the appropriate View name based on the request.  It
        // checks to see if the user is on a mobile device or not
        String viewName = null;
        if (ControllerUtils.isMobileDevice(request)) {
            log.debug("mobile device detected - viewing default mobile page template");
            viewName = mobileView;
        } else {
            log.debug("non-mobile device detected - viewing regular page layout");
            viewName = defaultView;
        }
        log.debug("viewName: " + viewName);
        return viewName;
    }

    public static void addNavItemsToModel(String view, Model model, String referringPageId, User user) {
        final NavigationMenu topMenu = getTopMenu(view, referringPageId, user, true);
        model.addAttribute(topMenu.getName(), topMenu);
    }

    public static void addNavItemsToModel(String view, Model model, String referringPageId, User user, boolean addStore) {
        final NavigationMenu topMenu = getTopMenu(view, referringPageId, user, addStore);
        model.addAttribute(topMenu.getName(), topMenu);
    }

    public static NavigationMenu getTopMenu(String view, String referringPageId, User user, boolean addStoreLink) {
        NavigationMenu menu = new NavigationMenu("topnav");
        if(view.startsWith(ViewNames.PAGE) || view.startsWith(ViewNames.MOBILE_HOME)) {
            NavigationItem profile = new NavigationItem("page.profile.title", getDisplayName(user), "/app/person/id/" + user.getId() + "?referringPageId=" + referringPageId);
            menu.addNavigationItem(profile);

            if(addStoreLink){
                NavigationItem store = new NavigationItem("page.store.title", null, "/app/store?referringPageId=" + referringPageId);
                menu.addNavigationItem(store);
            }
            NavigationItem admin = getAdminItem(referringPageId);
            menu.addNavigationItem(admin);

            NavigationItem groupsItem = getGroupsItem(user);
            menu.addNavigationItem(groupsItem);

            NavigationItem logout = getLogoutItem();
            menu.addNavigationItem(logout);
        } else if (view.startsWith(ViewNames.STORE)) {
            NavigationItem addWidget = new NavigationItem("page.addwidget.title", null, "/app/store/widget/add?referringPageId=" + referringPageId);
            menu.addNavigationItem(addWidget);

            NavigationItem back = getBackItem(referringPageId);
            menu.addNavigationItem(back);

            NavigationItem admin = getAdminItem(referringPageId);
            menu.addNavigationItem(admin);

            NavigationItem logout = getLogoutItem();
            menu.addNavigationItem(logout);
        } else if (view.startsWith(ViewNames.PERSON_PROFILE) || view.startsWith(ViewNames.USER_NOT_FOUND)) {
            NavigationItem back = getBackItem(referringPageId);
            menu.addNavigationItem(back);

            NavigationItem admin = getAdminItem(referringPageId);
            menu.addNavigationItem(admin);

            NavigationItem logout = getLogoutItem();
            menu.addNavigationItem(logout);
        }
        else if (view.startsWith(ViewNames.ADD_WIDGET_FORM) || view.startsWith(ViewNames.WIDGET)) {
            if(view.equals(ViewNames.WIDGET_MARKETPLACE)){
                NavigationItem addWidget = new NavigationItem("page.widget.backToMarketplace", null, "/app/marketplace?referringPageId=" + referringPageId);
                menu.addNavigationItem(addWidget);
            }
            NavigationItem addWidget = new NavigationItem("page.widget.backToStore", null, "/app/store?referringPageId=" + referringPageId);
            menu.addNavigationItem(addWidget);

            NavigationItem back = getBackItem(referringPageId);
            menu.addNavigationItem(back);

            NavigationItem admin = getAdminItem(referringPageId);
            menu.addNavigationItem(admin);

            NavigationItem logout = getLogoutItem();
            menu.addNavigationItem(logout);
        }

        return menu;
    }

    public static String getDisplayName(User user) {
        String displayName = user.getDisplayName();
        return (displayName == null || "".equals(displayName)) ? user.getUsername() : displayName;
    }

    private static NavigationItem getBackItem(String referringPageId) {
        NavigationItem back = new NavigationItem();
        back.setName("page.general.back");
        if (referringPageId != null && !referringPageId.isEmpty()) {
            back.setUrl("/app/page/view/" + referringPageId);
        } else {
            back.setUrl("/");
        }
        return back;
    }

    private static NavigationItem getAdminItem(String referringPageId) {
        NavigationItem admin = new NavigationItem();
        admin.setName("page.general.toadmininterface");
        if (referringPageId != null && !referringPageId.isEmpty()) {
            admin.setUrl("/app/admin?referringPageId=" + referringPageId);
        } else {
            admin.setUrl("/app/admin");
        }
        return admin;
    }

    private static NavigationItem getLogoutItem() {
        return new NavigationItem("page.general.logout", null, "/j_spring_security_logout");
    }

    private static NavigationItem getGroupsItem(User user) {
        NavigationItem groups = new NavigationItem();
        groups.setName("groups");
        List<Group20> group20List = getGroups(user);
        if (group20List != null) {
            for (Group20 group20 : group20List) {
                NavigationItem groupItem = new NavigationItem();
                groupItem.setNameParam(group20.getTitle());
                groupItem.setName(group20.getId());
                groups.addChildNavigationItem(groupItem);
            }
        }
        return groups;
    }

    public static List<Group20> getGroups(User user) {

        OAuthService service = new ServiceBuilder()
                .provider(new OpenConextApi10aTwoLegged())
                .apiKey(oauthKey)
                .apiSecret(oauthSecret)
                .scope("read")
                .callback("oob")
                .signatureType(SignatureType.QueryString)
                .debug()
                .build();

        OAuthRequest req = new OAuthRequest(Verb.GET, apiLocation + "social/rest/groups/" + user.getUsername());
        service.signRequest(new Token("", ""), req);
        Response response = req.send();

        final String bodyText = response.getBody();

        ObjectMapper om = new ObjectMapper();
        Group20Entry group20Entry1 = null;
        try {
            group20Entry1 = om.readValue(bodyText, Group20Entry.class);
        } catch (IOException e) {
            group20Entry1 = new Group20Entry();
        }

        return group20Entry1.getEntry();

    }
}
