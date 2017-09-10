.class public interface abstract Lcom/google/gdata/model/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/Metadata$VirtualValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getContext()Lcom/google/gdata/model/MetadataContext;
.end method

.method public abstract getKey()Lcom/google/gdata/model/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/MetadataKey",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract getName()Lcom/google/gdata/model/QName;
.end method

.method public abstract getParent()Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end method

.method public abstract getSchema()Lcom/google/gdata/model/Schema;
.end method

.method public abstract isRequired()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation
.end method
