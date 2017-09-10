.class public interface abstract Lcom/google/gdata/model/ElementMetadata;
.super Ljava/lang/Object;
.source "ElementMetadata.java"

# interfaces
.implements Lcom/google/gdata/model/Metadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;,
        Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;,
        Lcom/google/gdata/model/ElementMetadata$Cardinality;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/gdata/model/Element;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gdata/model/Metadata",
        "<TD;>;"
    }
.end annotation


# virtual methods
.method public abstract adapt(Ljava/lang/String;)Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end method

.method public abstract bind(Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation
.end method

.method public abstract bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/AttributeKey",
            "<TK;>;)",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TK;>;"
        }
    .end annotation
.end method

.method public abstract bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "L:Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TK;T",
            "L;",
            ">;)",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TK;T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createElement()Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentCreationException;
        }
    .end annotation
.end method

.method public abstract findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end method

.method public abstract getAttributes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;
.end method

.method public abstract getDefaultNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;
.end method

.method public abstract getElements()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end method

.method public abstract getKey()Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;"
        }
    .end annotation
.end method

.method public abstract getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
.end method

.method public abstract getProperties()Ljava/lang/Object;
.end method

.method public abstract getReferencedNamespaces()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
.end method

.method public abstract getValidator()Lcom/google/gdata/model/ElementValidator;
.end method

.method public abstract isContentRequired()Z
.end method

.method public abstract isDeclared(Lcom/google/gdata/model/AttributeKey;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract isDeclared(Lcom/google/gdata/model/ElementKey;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation
.end method

.method public abstract isFlattened()Z
.end method

.method public abstract isReferenced()Z
.end method

.method public abstract isSelected(Lcom/google/gdata/model/Element;)Z
.end method

.method public abstract validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;)V
.end method
