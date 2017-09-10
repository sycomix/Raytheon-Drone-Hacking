.class public Lcom/google/gdata/model/MetadataValidator;
.super Ljava/lang/Object;
.source "MetadataValidator.java"

# interfaces
.implements Lcom/google/gdata/model/ElementValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 9
    .param p1, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .param p2, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ValidationContext;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v5

    .line 36
    .local v5, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    invoke-virtual {v5}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-ne v6, v7, :cond_0

    .line 38
    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->invalidTextContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must not contain text content."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    .line 50
    :cond_0
    :goto_0
    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getAttributes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/AttributeKey;

    .line 51
    .local v1, "attributeKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-interface {p3, v1}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    .line 52
    .local v0, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    invoke-interface {v0}, Lcom/google/gdata/model/AttributeMetadata;->isRequired()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2, v1}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 53
    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->missingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element must contain value for attribute "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_1

    .line 43
    .end local v0    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v1    # "attributeKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v5}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_0

    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->isContentRequired()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->missingTextContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must contain a text content value."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_0

    .line 60
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getElements()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    .line 61
    .local v2, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-interface {p3, v2}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    .line 62
    .local v3, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->isRequired()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2, v2}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 63
    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->missingExtensionElement:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element must contain a child named "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_2

    .line 68
    .end local v2    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v3    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :cond_5
    return-void
.end method
