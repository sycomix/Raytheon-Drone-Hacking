.class public final Lcom/google/gdata/model/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/Schema$RootKey;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/AttributeMetadataRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/ElementMetadataRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 1
    .param p1, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1, p0}, Lcom/google/gdata/model/Schema;->buildElements(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/Schema;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Schema;->elements:Ljava/util/Map;

    .line 71
    invoke-static {p1, p0}, Lcom/google/gdata/model/Schema;->buildAttributes(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/Schema;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Schema;->attributes:Ljava/util/Map;

    .line 72
    return-void
.end method

.method private static buildAttributes(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/Schema;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataRegistry;",
            "Lcom/google/gdata/model/Schema;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/AttributeMetadataRegistry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 83
    .local v0, "attributeBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/AttributeMetadataRegistry;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataRegistry;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    invoke-virtual {v3, p1}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->create(Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/AttributeMetadataRegistry;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 86
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method private static buildElements(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/Schema;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataRegistry;",
            "Lcom/google/gdata/model/Schema;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/ElementMetadataRegistry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 98
    .local v0, "elementBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/ElementMetadataRegistry;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataRegistry;->getElements()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    invoke-virtual {v3, p1}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->create(Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/ElementMetadataRegistry;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 101
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/Schema$RootKey;Lcom/google/gdata/model/ElementMetadataRegistryBuilder;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public static builder()Lcom/google/gdata/model/MetadataRegistry;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/model/MetadataRegistry;

    invoke-direct {v0}, Lcom/google/gdata/model/MetadataRegistry;-><init>()V

    return-object v0
.end method

.method private getAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadataRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeMetadataRegistry;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    iget-object v0, p0, Lcom/google/gdata/model/Schema;->attributes:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeMetadataRegistry;

    return-object v0
.end method

.method private getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadataRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementMetadataRegistry;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    iget-object v0, p0, Lcom/google/gdata/model/Schema;->elements:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistry;

    return-object v0
.end method

.method static getRootKey(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/Schema$RootKey;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-static {p0}, Lcom/google/gdata/model/Schema$RootKey;->access$100(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v0

    return-object v0
.end method

.method static getRootKey(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/Schema$RootKey;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-static {p0}, Lcom/google/gdata/model/Schema$RootKey;->access$000(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;)",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "attribute":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 2
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "attribute":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    invoke-direct {p0, p2}, Lcom/google/gdata/model/Schema;->getAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadataRegistry;

    move-result-object v0

    .line 197
    .local v0, "attRegistry":Lcom/google/gdata/model/AttributeMetadataRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/model/AttributeMetadataRegistry;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v1

    goto :goto_0
.end method

.method public bind(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;)",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;)",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "child":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .locals 2
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "child":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    invoke-direct {p0, p2}, Lcom/google/gdata/model/Schema;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadataRegistry;

    move-result-object v0

    .line 136
    .local v0, "childRegistry":Lcom/google/gdata/model/ElementMetadataRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/model/ElementMetadataRegistry;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    goto :goto_0
.end method

.method public bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .param p2, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementMetadata",
            "<TD;TE;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    return-object v0
.end method

.method getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeTransform;
    .locals 2
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeTransform;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "attribute":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-direct {p0, p2}, Lcom/google/gdata/model/Schema;->getAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadataRegistry;

    move-result-object v0

    .line 161
    .local v0, "attributeRegistry":Lcom/google/gdata/model/AttributeMetadataRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/model/AttributeMetadataRegistry;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeTransform;

    move-result-object v1

    goto :goto_0
.end method

.method getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;
    .locals 2
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementTransform;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "child":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0, p2}, Lcom/google/gdata/model/Schema;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadataRegistry;

    move-result-object v0

    .line 171
    .local v0, "childRegistry":Lcom/google/gdata/model/ElementMetadataRegistry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/model/ElementMetadataRegistry;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v1

    goto :goto_0
.end method

.method getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/Transform;
    .locals 1
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/Transform;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    instance-of v0, p2, Lcom/google/gdata/model/AttributeKey;

    if-eqz v0, :cond_0

    .line 149
    check-cast p2, Lcom/google/gdata/model/AttributeKey;

    .end local p2    # "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeTransform;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .restart local p2    # "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_0
    check-cast p2, Lcom/google/gdata/model/ElementKey;

    .end local p2    # "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v0

    goto :goto_0
.end method
