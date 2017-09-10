.class public abstract Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
.super Ljava/lang/Object;
.source "StreamPropertiesBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/gdata/wireformats/StreamPropertiesBuilder",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

.field protected contentType:Lcom/google/gdata/util/ContentType;

.field protected extensionProfile:Lcom/google/gdata/data/ExtensionProfile;

.field protected final queryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected rootMetadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->queryMap:Ljava/util/Map;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/wireformats/StreamProperties;)V
    .locals 4
    .param p1, "source"    # Lcom/google/gdata/wireformats/StreamProperties;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Lcom/google/gdata/wireformats/StreamProperties;->getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    .line 60
    invoke-interface {p1}, Lcom/google/gdata/wireformats/StreamProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->contentType:Lcom/google/gdata/util/ContentType;

    .line 61
    invoke-interface {p1}, Lcom/google/gdata/wireformats/StreamProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->extensionProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 62
    invoke-interface {p1}, Lcom/google/gdata/wireformats/StreamProperties;->getRootMetadata()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->rootMetadata:Lcom/google/gdata/model/ElementMetadata;

    .line 63
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->queryMap:Ljava/util/Map;

    .line 64
    invoke-interface {p1}, Lcom/google/gdata/wireformats/StreamProperties;->getQueryParameterNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->queryMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Lcom/google/gdata/wireformats/StreamProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
    .locals 1
    .param p1, "altRegistry"    # Lcom/google/gdata/wireformats/AltRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltRegistry;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    iput-object p1, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
    .locals 1
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/ContentType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    iput-object p1, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->contentType:Lcom/google/gdata/util/ContentType;

    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setElementMetadata(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)TT;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    .local p1, "elementMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iput-object p1, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->rootMetadata:Lcom/google/gdata/model/ElementMetadata;

    .line 147
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setExtensionProfile(Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
    .locals 1
    .param p1, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    iput-object p1, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->extensionProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->queryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setQueryParameters(Ljava/util/Map;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    .local p1, "queryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->queryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final thisInstance()Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<TT;>;"
    return-object p0
.end method
