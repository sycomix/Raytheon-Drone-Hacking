.class public interface abstract Lorg/mortbay/jetty/Handler;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Lorg/mortbay/component/LifeCycle;


# static fields
.field public static final ALL:I = 0xf

.field public static final DEFAULT:I = 0x0

.field public static final ERROR:I = 0x8

.field public static final FORWARD:I = 0x2

.field public static final INCLUDE:I = 0x4

.field public static final REQUEST:I = 0x1


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getServer()Lorg/mortbay/jetty/Server;
.end method

.method public abstract handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract setServer(Lorg/mortbay/jetty/Server;)V
.end method
