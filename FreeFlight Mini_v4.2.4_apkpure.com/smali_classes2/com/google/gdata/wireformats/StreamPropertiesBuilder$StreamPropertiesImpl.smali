.class public Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;
.super Ljava/lang/Object;
.source "StreamPropertiesBuilder.java"

# interfaces
.implements Lcom/google/gdata/wireformats/StreamProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StreamPropertiesImpl"
.end annotation


# instance fields
.field private final altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

.field private final contentType:Lcom/google/gdata/util/ContentType;

.field private final elementMetadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private final extensionProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private final queryMap:Ljava/util/Map;
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


# direct methods
.method protected constructor <init>(Lcom/google/gdata/wireformats/StreamPropertiesBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/StreamPropertiesBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "builder":Lcom/google/gdata/wireformats/StreamPropertiesBuilder;, "Lcom/google/gdata/wireformats/StreamPropertiesBuilder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iget-object v0, p1, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    iput-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    .line 171
    iget-object v0, p1, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->contentType:Lcom/google/gdata/util/ContentType;

    iput-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->contentType:Lcom/google/gdata/util/ContentType;

    .line 172
    iget-object v0, p1, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->extensionProfile:Lcom/google/gdata/data/ExtensionProfile;

    iput-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->extensionProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 173
    iget-object v0, p1, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->queryMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->queryMap:Ljava/util/Map;

    .line 174
    iget-object v0, p1, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;->rootMetadata:Lcom/google/gdata/model/ElementMetadata;

    iput-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    .line 175
    return-void
.end method


# virtual methods
.method public getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->extensionProfile:Lcom/google/gdata/data/ExtensionProfile;

    return-object v0
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->queryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParameterNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->queryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRootMetadata()Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;->elementMetadata:Lcom/google/gdata/model/ElementMetadata;

    return-object v0
.end method
