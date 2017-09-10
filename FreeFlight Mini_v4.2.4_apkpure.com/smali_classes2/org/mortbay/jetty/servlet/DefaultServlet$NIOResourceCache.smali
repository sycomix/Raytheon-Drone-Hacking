.class Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;
.super Lorg/mortbay/jetty/ResourceCache;
.source "DefaultServlet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/DefaultServlet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NIOResourceCache"
.end annotation


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0
    .param p2, "mimeTypes"    # Lorg/mortbay/jetty/MimeTypes;

    .prologue
    .line 999
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    .line 1000
    invoke-direct {p0, p2}, Lorg/mortbay/jetty/ResourceCache;-><init>(Lorg/mortbay/jetty/MimeTypes;)V

    .line 1001
    return-void
.end method


# virtual methods
.method protected fill(Lorg/mortbay/jetty/ResourceCache$Content;)V
    .locals 8
    .param p1, "content"    # Lorg/mortbay/jetty/ResourceCache$Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "buffer":Lorg/mortbay/io/Buffer;
    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v6

    .line 1008
    .local v6, "resource":Lorg/mortbay/resource/Resource;
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v4

    .line 1010
    .local v4, "length":J
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-static {v7}, Lorg/mortbay/jetty/servlet/DefaultServlet;->access$100(Lorg/mortbay/jetty/servlet/DefaultServlet;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1012
    new-instance v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    .end local v0    # "buffer":Lorg/mortbay/io/Buffer;
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(Ljava/io/File;)V

    .line 1034
    .restart local v0    # "buffer":Lorg/mortbay/io/Buffer;
    :goto_0
    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/ResourceCache$Content;->setBuffer(Lorg/mortbay/io/Buffer;)V

    .line 1035
    return-void

    .line 1016
    :cond_0
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1019
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v1

    .line 1020
    .local v1, "connector":Lorg/mortbay/jetty/Connector;
    check-cast v1, Lorg/mortbay/jetty/nio/NIOConnector;

    .end local v1    # "connector":Lorg/mortbay/jetty/Connector;
    invoke-interface {v1}, Lorg/mortbay/jetty/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    .end local v0    # "buffer":Lorg/mortbay/io/Buffer;
    long-to-int v7, v4

    invoke-direct {v0, v7}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .restart local v0    # "buffer":Lorg/mortbay/io/Buffer;
    :goto_1
    long-to-int v7, v4

    invoke-interface {v0, v3, v7}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    .line 1032
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 1020
    :cond_1
    :try_start_1
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    .end local v0    # "buffer":Lorg/mortbay/io/Buffer;
    long-to-int v7, v4

    invoke-direct {v0, v7}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1025
    :catch_0
    move-exception v2

    .line 1027
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 1028
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 1029
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    long-to-int v7, v4

    invoke-direct {v0, v7}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    .restart local v0    # "buffer":Lorg/mortbay/io/Buffer;
    goto :goto_1
.end method
