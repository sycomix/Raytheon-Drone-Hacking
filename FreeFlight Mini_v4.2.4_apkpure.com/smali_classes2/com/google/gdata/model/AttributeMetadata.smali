.class public interface abstract Lcom/google/gdata/model/AttributeMetadata;
.super Ljava/lang/Object;
.source "AttributeMetadata.java"

# interfaces
.implements Lcom/google/gdata/model/Metadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gdata/model/Metadata",
        "<TD;>;"
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract getKey()Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;"
        }
    .end annotation
.end method
