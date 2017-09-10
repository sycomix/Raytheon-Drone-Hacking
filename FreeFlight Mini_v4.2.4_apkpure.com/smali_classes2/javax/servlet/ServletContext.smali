.class public interface abstract Ljavax/servlet/ServletContext;
.super Ljava/lang/Object;
.source "ServletContext.java"


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()Ljava/util/Enumeration;
.end method

.method public abstract getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
.end method

.method public abstract getContextPath()Ljava/lang/String;
.end method

.method public abstract getInitParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInitParameterNames()Ljava/util/Enumeration;
.end method

.method public abstract getMajorVersion()I
.end method

.method public abstract getMimeType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMinorVersion()I
.end method

.method public abstract getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
.end method

.method public abstract getRealPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
.end method

.method public abstract getResource(Ljava/lang/String;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public abstract getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
.end method

.method public abstract getServerInfo()Ljava/lang/String;
.end method

.method public abstract getServlet(Ljava/lang/String;)Ljavax/servlet/Servlet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract getServletContextName()Ljava/lang/String;
.end method

.method public abstract getServletNames()Ljava/util/Enumeration;
.end method

.method public abstract getServlets()Ljava/util/Enumeration;
.end method

.method public abstract log(Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method
