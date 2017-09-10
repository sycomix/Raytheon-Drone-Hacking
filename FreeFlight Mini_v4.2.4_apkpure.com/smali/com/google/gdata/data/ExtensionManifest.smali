.class public Lcom/google/gdata/data/ExtensionManifest;
.super Ljava/lang/Object;
.source "ExtensionManifest.java"


# instance fields
.field arbitraryXml:Z

.field final extendedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;"
        }
    .end annotation
.end field

.field mixedContent:Z

.field final subclassManifests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ExtensionManifest;",
            ">;"
        }
    .end annotation
.end field

.field final supportedExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/util/common/base/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gdata/data/ExtensionDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "extendedType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    .line 58
    iput-boolean v1, p0, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 65
    iput-boolean v1, p0, Lcom/google/gdata/data/ExtensionManifest;->mixedContent:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionManifest;->extendedType:Ljava/lang/Class;

    .line 80
    return-void
.end method


# virtual methods
.method getNamespaceDecls()Ljava/util/Collection;
    .locals 4
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
    .line 98
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v2, "nsDecls":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription;

    .line 101
    .local v0, "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :cond_0
    return-object v2
.end method

.method public getSupportedExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/util/common/base/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gdata/data/ExtensionDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
