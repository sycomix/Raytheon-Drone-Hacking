.class public abstract Lcom/google/gdata/model/ForwardingElementMetadata;
.super Ljava/lang/Object;
.source "ForwardingElementMetadata.java"

# interfaces
.implements Lcom/google/gdata/model/ElementMetadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/gdata/model/Element;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gdata/model/ElementMetadata",
        "<TD;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Ljava/lang/String;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->adapt(Ljava/lang/String;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .param p1, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->bind(Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 1
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

    .prologue
    .line 51
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TK;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;
    .locals 1
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

    .prologue
    .line 56
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TK;TL;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method

.method public createElement()Lcom/google/gdata/model/Element;
    .locals 1
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

    .prologue
    .line 60
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->createElement()Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation
.end method

.method public findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/model/ElementMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/google/gdata/model/MetadataContext;
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getDefaultNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getElements()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Lcom/google/gdata/model/MetadataKey;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/google/gdata/model/QName;
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getParent()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getProperties()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getReferencedNamespaces()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getReferencedNamespaces()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lcom/google/gdata/model/Schema;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getSchema()Lcom/google/gdata/model/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    move-result-object v0

    return-object v0
.end method

.method public getValidator()Lcom/google/gdata/model/ElementValidator;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getValidator()Lcom/google/gdata/model/ElementValidator;

    move-result-object v0

    return-object v0
.end method

.method public isContentRequired()Z
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->isContentRequired()Z

    move-result v0

    return v0
.end method

.method public isDeclared(Lcom/google/gdata/model/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->isDeclared(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public isDeclared(Lcom/google/gdata/model/ElementKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    .local p1, "element":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->isDeclared(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public isFlattened()Z
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->isFlattened()Z

    move-result v0

    return v0
.end method

.method public isReferenced()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->isReferenced()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isSelected(Lcom/google/gdata/model/Element;)Z
    .locals 1
    .param p1, "e"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 112
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->isSelected(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->isVisible()Z

    move-result v0

    return v0
.end method

.method public parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .param p3, "value"    # Ljava/lang/Object;
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

    .prologue
    .line 153
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/model/ElementMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;)V
    .locals 1
    .param p1, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .param p2, "e"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 120
    .local p0, "this":Lcom/google/gdata/model/ForwardingElementMetadata;, "Lcom/google/gdata/model/ForwardingElementMetadata<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ForwardingElementMetadata;->delegate()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/model/ElementMetadata;->validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;)V

    .line 121
    return-void
.end method
