package mvc.filter;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.haeyoum.member.model.LoginUser;

@WebFilter(dispatcherTypes = { DispatcherType.REQUEST }, urlPatterns = { "/group/*","/member/update", "/member/logout", "/member/" })
public class LoginCheckFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletResponse resp = (HttpServletResponse) response;
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		if (!session.isNew()) {
			LoginUser user = (LoginUser) session.getAttribute("user");
			if (user == null) {
				resp.sendRedirect(req.getContextPath() + "/member/login");
				return;
			} else if (!user.isLogin()) {
				resp.sendRedirect(req.getContextPath() + "/member/login");
				return;
			}
		} else {
			resp.sendRedirect(req.getContextPath() + "/member/login");
			return;
		}

		chain.doFilter(request, response);
	}

	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
