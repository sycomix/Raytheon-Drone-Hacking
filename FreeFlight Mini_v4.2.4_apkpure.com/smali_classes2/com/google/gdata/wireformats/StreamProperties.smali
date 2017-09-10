.class public interface abstract Lcom/google/gdata/wireformats/StreamProperties;
.super Ljava/lang/Object;
.source "StreamProperties.java"


# virtual methods
.method public abstract getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
.end method

.method public abstract getContentType()Lcom/google/gdata/util/ContentType;
.end method

.method public abstract getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;
.end method

.method public abstract getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getQueryParameterNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRootMetadata()Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end method
