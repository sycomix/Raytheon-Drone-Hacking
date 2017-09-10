.class public Lcom/google/gdata/model/MetadataValueTransform;
.super Ljava/lang/Object;
.source "MetadataValueTransform.java"

# interfaces
.implements Lcom/google/gdata/model/Metadata$VirtualValue;


# instance fields
.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/google/gdata/model/MetadataKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "inputSources":[Lcom/google/gdata/model/MetadataKey;, "[Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 10
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
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v8, 0x0

    .line 56
    iget-object v9, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gdata/model/MetadataKey;

    .line 57
    .local v6, "source":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    instance-of v9, v6, Lcom/google/gdata/model/ElementKey;

    if-eqz v9, :cond_3

    move-object v3, v6

    .line 58
    check-cast v3, Lcom/google/gdata/model/ElementKey;

    .line 59
    .local v3, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1, v3}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 60
    .local v2, "child":Lcom/google/gdata/model/Element;
    if-eqz v2, :cond_0

    .line 61
    if-nez p2, :cond_1

    move-object v4, v8

    .line 63
    .local v4, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v7

    .line 65
    .local v7, "value":Ljava/lang/Object;
    :goto_1
    if-eqz v7, :cond_0

    .line 80
    .end local v2    # "child":Lcom/google/gdata/model/Element;
    .end local v3    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v4    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .end local v6    # "source":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    .end local v7    # "value":Ljava/lang/Object;
    :goto_2
    return-object v7

    .line 61
    .restart local v2    # "child":Lcom/google/gdata/model/Element;
    .restart local v3    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .restart local v6    # "source":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_1
    invoke-interface {p2, v3}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v4

    goto :goto_0

    .line 63
    .restart local v4    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :cond_2
    invoke-interface {v4, v2, v4}, Lcom/google/gdata/model/ElementMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .end local v2    # "child":Lcom/google/gdata/model/Element;
    .end local v3    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v4    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :cond_3
    move-object v0, v6

    .line 70
    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 71
    .local v0, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-nez p2, :cond_4

    move-object v1, v8

    .line 73
    .local v1, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    :goto_3
    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v7

    .line 75
    .restart local v7    # "value":Ljava/lang/Object;
    :goto_4
    if-eqz v7, :cond_0

    goto :goto_2

    .line 71
    .end local v1    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4
    invoke-interface {p2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v1

    goto :goto_3

    .line 73
    .restart local v1    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    :cond_5
    invoke-interface {v1, p1, p2}, Lcom/google/gdata/model/AttributeMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_4

    .end local v0    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v1    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v6    # "source":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_6
    move-object v7, v8

    .line 80
    goto :goto_2
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 9
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
    .line 88
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v7, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v7, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gdata/model/MetadataKey;

    .line 92
    .local v6, "source":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    instance-of v7, v6, Lcom/google/gdata/model/ElementKey;

    if-eqz v7, :cond_2

    move-object v3, v6

    .line 93
    check-cast v3, Lcom/google/gdata/model/ElementKey;

    .line 94
    .local v3, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-interface {p2, v3}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v4

    .line 95
    .local v4, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p1, v3}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 96
    .local v2, "child":Lcom/google/gdata/model/Element;
    if-nez v2, :cond_1

    .line 98
    :try_start_0
    invoke-interface {v4}, Lcom/google/gdata/model/ElementMetadata;->createElement()Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    invoke-virtual {p1, v3, v2}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 104
    :cond_1
    invoke-interface {v4, v2, v4, p3}, Lcom/google/gdata/model/ElementMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v5

    .line 100
    .local v5, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v7, Lcom/google/gdata/util/ParseException;

    invoke-direct {v7, v5}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .end local v2    # "child":Lcom/google/gdata/model/Element;
    .end local v3    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v4    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .end local v5    # "e":Lcom/google/gdata/wireformats/ContentCreationException;
    :cond_2
    move-object v0, v6

    .line 106
    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 107
    .local v0, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-interface {p2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v1

    .line 108
    .local v1, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    invoke-interface {v1, p1, p2, p3}, Lcom/google/gdata/model/AttributeMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    goto :goto_0
.end method
