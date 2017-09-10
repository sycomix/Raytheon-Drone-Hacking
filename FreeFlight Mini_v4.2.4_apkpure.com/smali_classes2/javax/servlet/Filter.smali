.class public interface abstract Ljavax/servlet/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract init(Ljavax/servlet/FilterConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method
