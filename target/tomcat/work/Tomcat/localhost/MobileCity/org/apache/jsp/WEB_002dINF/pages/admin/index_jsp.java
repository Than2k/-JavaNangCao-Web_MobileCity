/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2022-12-14 07:55:42 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("  <!DOCTYPE html>\r\n");
      out.write("  <!--\r\n");
      out.write("This is a starter template page. Use this page to start your new project from\r\n");
      out.write("scratch. This page gets rid of all links and provides the needed markup only.\r\n");
      out.write("-->\r\n");
      out.write("  <html>\r\n");
      out.write("    <head>\r\n");
      out.write("      <meta charset=\"utf-8\">\r\n");
      out.write("      <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("      <title>AdminLTE 2 | Starter</title>\r\n");
      out.write("      <!-- Tell the browser to be responsive to screen width -->\r\n");
      out.write("      <meta content=\"width=device-width, initial-scale=1, maximum-scale=1,\r\n");
      out.write("        user-scalable=no\" name=\"viewport\">\r\n");
      out.write("      <link rel=\"stylesheet\"\r\n");
      out.write("        href=\"bower_components/bootstrap/dist/css/bootstrap.min.css\">\r\n");
      out.write("      <!-- Font Awesome -->\r\n");
      out.write("      <link rel=\"stylesheet\"\r\n");
      out.write("        href=\"./bower_components/font-awesome/css/font-awesome.min.css\">\r\n");
      out.write("      <!-- Ionicons -->\r\n");
      out.write("      <link rel=\"stylesheet\"\r\n");
      out.write("        href=\"./bower_components/Ionicons/css/ionicons.min.css\">\r\n");
      out.write("      <!-- Theme style -->\r\n");
      out.write("      <link rel=\"stylesheet\" href=\"dist/css/AdminLTE.min.css\">\r\n");
      out.write("      <!-- AdminLTE Skins. We have chosen the skin-blue for this starter\r\n");
      out.write("        page. However, you can choose any other skin. Make sure you\r\n");
      out.write("        apply the skin class to the body tag so the changes take effect. -->\r\n");
      out.write("      <link rel=\"stylesheet\" href=\"dist/css/skins/skin-blue.min.css\">\r\n");
      out.write("\r\n");
      out.write("      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("      <!--[if lt IE 9]>\r\n");
      out.write("  <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\r\n");
      out.write("  <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("  <![endif]-->\r\n");
      out.write("      <!-- Google Font -->\r\n");
      out.write("      <link rel=\"stylesheet\"\r\n");
      out.write("        href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic\">\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body class=\"hold-transition skin-blue sidebar-mini\">\r\n");
      out.write("      <div class=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("        <!--main header-->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("         <!--main header-->\r\n");
      out.write("        <!-- Content Wrapper. Contains page content -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "content.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- /.content-wrapper -->\r\n");
      out.write("\r\n");
      out.write("        <!-- Main Footer -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Control Sidebar -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- /.control-sidebar -->\r\n");
      out.write("        <!-- Add the sidebar's background. This div must be placed\r\n");
      out.write("            immediately after the control sidebar -->\r\n");
      out.write("        <div class=\"control-sidebar-bg\"></div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- ./wrapper -->\r\n");
      out.write("\r\n");
      out.write("      <!-- REQUIRED JS SCRIPTS -->\r\n");
      out.write("\r\n");
      out.write("      <!-- jQuery 3 -->\r\n");
      out.write("      <script src=\"bower_components/jquery/dist/jquery.min.js\"></script>\r\n");
      out.write("      <!-- Bootstrap 3.3.7 -->\r\n");
      out.write("      <script src=\"bower_components/bootstrap/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("      <!-- AdminLTE App -->\r\n");
      out.write("      <script src=\"dist/js/adminlte.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("      <!-- Optionally, you can add Slimscroll and FastClick plugins.\r\n");
      out.write("     Both of these plugins are recommended to enhance the\r\n");
      out.write("     user experience. -->\r\n");
      out.write("    </body>\r\n");
      out.write("  </html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
