.class public interface abstract Lcom/google/gdata/client/Service$GDataRequest;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GDataRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/Service$GDataRequest$RequestType;
    }
.end annotation


# virtual methods
.method public abstract end()V
.end method

.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getParseSource()Lcom/google/gdata/data/ParseSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getRequestContentType()Lcom/google/gdata/util/ContentType;
.end method

.method public abstract getRequestStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRequestUrl()Ljava/net/URL;
.end method

.method public abstract getResponseContentType()Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getResponseDateHeader(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setConnectTimeout(I)V
.end method

.method public abstract setEtag(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setIfModifiedSince(Lcom/google/gdata/data/DateTime;)V
.end method

.method public abstract setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setReadTimeout(I)V
.end method
