package org.apache.jsp.inc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class nav_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/inc/conn.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<sql:setDataSource var=\"dbconn\" driver=\"com.mysql.jdbc.Driver\" url=\"jdbc:mysql://localhost/ed\" user=\"root\" password=\"\"></sql:setDataSource>\n");
      out.write("\n");
      out.write("<sql:query dataSource=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dbconn}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"cat\">\n");
      out.write("    select * from tbCategoria;\n");
      out.write("</sql:query>");
      out.write("\r\n");
      out.write("<aside>\r\n");
      out.write("    <nav>\r\n");
      out.write("        <h2>Seções</h2>\r\n");
      out.write("\r\n");
      out.write("        <c:forEach var=\"col\" items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cat.rows}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("            \r\n");
      out.write("            <sql:query dataSource=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dbconn}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"subCat\">\r\n");
      out.write("                select * from tbSubCategoria where idCategoria=<c:out value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${col.idCategoria}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></c:out> order by subCategoria limit 4;\r\n");
      out.write("            </sql:query>\r\n");
      out.write("            <h3 class=\"tit-categoria-1\"><c:out value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${col.categoria}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></c:out></h3>\r\n");
      out.write("            <ul>\r\n");
      out.write("\r\n");
      out.write("                <c:forEach var=\"col2\" items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${subCat.rows}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <c:out value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${col2.subCategoria}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></c:out>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </c:forEach>\t\r\n");
      out.write("            </ul>\r\n");
      out.write("        </c:forEach>\r\n");
      out.write("    </nav>\t\r\n");
      out.write("</aside>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
