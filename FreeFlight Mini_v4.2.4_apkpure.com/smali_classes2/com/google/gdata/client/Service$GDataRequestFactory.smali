.class public interface abstract Lcom/google/gdata/client/Service$GDataRequestFactory;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GDataRequestFactory"
.end annotation


# virtual methods
.method public abstract getRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract setAuthToken(Lcom/google/gdata/client/AuthTokenFactory$AuthToken;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
