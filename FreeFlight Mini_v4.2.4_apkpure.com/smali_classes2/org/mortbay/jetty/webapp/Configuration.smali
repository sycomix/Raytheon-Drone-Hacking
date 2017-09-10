.class public interface abstract Lorg/mortbay/jetty/webapp/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract configureClassLoader()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract configureDefaults()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract configureWebApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract deconfigureWebApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
.end method

.method public abstract setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
.end method
