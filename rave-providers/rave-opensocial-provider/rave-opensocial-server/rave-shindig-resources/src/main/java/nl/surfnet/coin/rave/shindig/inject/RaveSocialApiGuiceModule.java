package nl.surfnet.coin.rave.shindig.inject;

/**
 * Created with IntelliJ IDEA. User: alle Date: 5/23/12 Time: 2:25 PM To change this template use File | Settings | File
 * Templates.
 */

import java.util.Set;

import com.google.common.collect.ImmutableSet;

import org.apache.shindig.social.core.config.SocialApiGuiceModule;
import org.apache.shindig.social.opensocial.service.*;

/**
 * Adds the {@link org.apache.shindig.social.opensocial.service.GroupHandler} to the set of supported handlers
 */
public class RaveSocialApiGuiceModule extends SocialApiGuiceModule {
    @Override
    protected Set<Class<?>> getHandlers() {
        return ImmutableSet.of(ActivityHandler.class, AppDataHandler.class,
                PersonHandler.class, MessageHandler.class, AlbumHandler.class,
                MediaItemHandler.class, ActivityStreamHandler.class, GroupHandler.class, ResourceHandler.class);
    }
}
