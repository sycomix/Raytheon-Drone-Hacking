.class public Lcom/google/gdata/wireformats/GeneratorUtils;
.super Ljava/lang/Object;
.source "GeneratorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNamespace(Ljava/util/Map;Lcom/google/gdata/model/QName;)V
    .locals 4
    .param p1, "name"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;",
            "Lcom/google/gdata/model/QName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "namespaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    .line 90
    .local v1, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "uri":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static calculateNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Map;
    .locals 1
    .param p0, "root"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 46
    .local v0, "namespaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    invoke-static {v0, p0, p1}, Lcom/google/gdata/wireformats/GeneratorUtils;->calculateNamespaces(Ljava/util/Map;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 47
    return-object v0
.end method

.method private static calculateNamespaces(Ljava/util/Map;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 10
    .param p1, "e"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "namespaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v8, 0x0

    .line 58
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v7

    .line 59
    .local v7, "name":Lcom/google/gdata/model/QName;
    :goto_0
    invoke-static {p0, v7}, Lcom/google/gdata/wireformats/GeneratorUtils;->addNamespace(Ljava/util/Map;Lcom/google/gdata/model/QName;)V

    .line 61
    invoke-virtual {p1, p2}, Lcom/google/gdata/model/Element;->getAttributeIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "attIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Attribute;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Attribute;

    .line 64
    .local v0, "att":Lcom/google/gdata/model/Attribute;
    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v2

    .line 65
    .local v2, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-nez p2, :cond_1

    move-object v3, v8

    .line 67
    .local v3, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    :goto_2
    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v7

    .line 68
    :goto_3
    invoke-static {p0, v7}, Lcom/google/gdata/wireformats/GeneratorUtils;->addNamespace(Ljava/util/Map;Lcom/google/gdata/model/QName;)V

    goto :goto_1

    .line 58
    .end local v0    # "att":Lcom/google/gdata/model/Attribute;
    .end local v1    # "attIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Attribute;>;"
    .end local v2    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v3    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v7    # "name":Lcom/google/gdata/model/QName;
    :cond_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v7

    goto :goto_0

    .line 65
    .restart local v0    # "att":Lcom/google/gdata/model/Attribute;
    .restart local v1    # "attIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Attribute;>;"
    .restart local v2    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .restart local v7    # "name":Lcom/google/gdata/model/QName;
    :cond_1
    invoke-interface {p2, v2}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v3

    goto :goto_2

    .line 67
    .restart local v3    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    :cond_2
    invoke-interface {v3}, Lcom/google/gdata/model/AttributeMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v7

    goto :goto_3

    .line 71
    .end local v0    # "att":Lcom/google/gdata/model/Attribute;
    .end local v2    # "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v3    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/gdata/model/Element;->getElementIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v5

    .line 72
    .local v5, "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/Element;

    .line 74
    .local v4, "child":Lcom/google/gdata/model/Element;
    if-nez p2, :cond_4

    move-object v6, v8

    .line 76
    .local v6, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :goto_5
    invoke-static {p0, v4, v6}, Lcom/google/gdata/wireformats/GeneratorUtils;->calculateNamespaces(Ljava/util/Map;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    goto :goto_4

    .line 74
    .end local v6    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :cond_4
    invoke-virtual {v4}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v9

    invoke-interface {p2, v9}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v6

    goto :goto_5

    .line 78
    .end local v4    # "child":Lcom/google/gdata/model/Element;
    :cond_5
    return-void
.end method
