package org.apache.rave.portal.web.filter;

import org.apache.rave.model.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Maciej Machulak (maciej.machulak@cloudidentity.co.uk)
 */
public class GroupContextFilter implements Filter {

    private static final String GROUPCONTEXT = "GROUPCONTEXT";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse resp = (HttpServletResponse)response;

        String attribute = (String) req.getSession().getAttribute(GROUPCONTEXT);


        if (userId != null) {
            req.setAttribute("GROUPCONTEXT", userId);
        }

        chain.doFilter(req, resp);
    }

    @Override
    public void destroy() {

    }
}
