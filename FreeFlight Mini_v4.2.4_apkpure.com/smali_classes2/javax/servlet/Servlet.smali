.class public interface abstract Ljavax/servlet/Servlet;
.super Ljava/lang/Object;
.source "Servlet.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getServletConfig()Ljavax/servlet/ServletConfig;
.end method

.method public abstract getServletInfo()Ljava/lang/String;
.end method

.method public abstract init(Ljavax/servlet/ServletConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
