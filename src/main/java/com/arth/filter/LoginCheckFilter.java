/*
 * package com.arth.filter;
 * 
 * import java.io.IOException;
 * 
 * import org.springframework.stereotype.Component;
 * 
 * import jakarta.servlet.Filter; import jakarta.servlet.FilterChain; import
 * jakarta.servlet.RequestDispatcher; import jakarta.servlet.ServletException;
 * import jakarta.servlet.ServletRequest; import
 * jakarta.servlet.ServletResponse; import
 * jakarta.servlet.http.HttpServletRequest; import
 * jakarta.servlet.http.HttpSession;
 * 
 * @Component public class LoginCheckFilter implements Filter { public void
 * doFilter (ServletRequest request, ServletRequest response, FilterChain chain)
 * throws IOException, ServletException { HttpSession session =
 * ((HttpServletRequest) request).getSession();
 * System.out.println("LoginCheckFilter called.....");
 * 
 * String url = ((HttpServletRequest) request).getRequestURI(); if
 * (!url.contains("/assets")) System.out.println(url);
 * 
 * if ( url.contains("/assets") || url.contains("/login") ||
 * url.contains("/logout") || url.contains("/signup") ||
 * url.contains("/forgetpassword") || url.contains("/authentication") ||
 * url.contains("/saveuser") || url.contains("/updatepasswordjspopen") ||
 * url.contains("/updatemypassword") ||
 * url.contains("/sendotpforforgetpassword") ) { chain.doFilter(request,
 * response) } else { if (session.getAttribute("user") == null) {
 * System.out.println("===="); request.setAttribute("error",
 * "Please Login Before Access the services"); RequestDispatcher rd =
 * request.getRequestDispatcher("login"); rd.forward(request, (ServletResponse)
 * response); }else { chain.doFilter(request, (ServletResponse) response); } } }
 * 
 * @Override public void doFilter(ServletRequest request, ServletResponse
 * response, FilterChain chain) throws IOException, ServletException { // TODO
 * Auto-generated method stub
 * 
 * } }
 */