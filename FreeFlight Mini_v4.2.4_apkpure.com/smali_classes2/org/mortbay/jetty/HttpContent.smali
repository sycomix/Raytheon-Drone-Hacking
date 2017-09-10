.class public interface abstract Lorg/mortbay/jetty/HttpContent;
.super Ljava/lang/Object;
.source "HttpContent.java"


# virtual methods
.method public abstract getBuffer()Lorg/mortbay/io/Buffer;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getContentType()Lorg/mortbay/io/Buffer;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLastModified()Lorg/mortbay/io/Buffer;
.end method

.method public abstract getResource()Lorg/mortbay/resource/Resource;
.end method

.method public abstract release()V
.end method
