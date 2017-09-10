.class public Lcom/google/api/gbase/client/GoogleBaseEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "GoogleBaseEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/api/gbase/client/GoogleBaseEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

.field private final metadata:Lcom/google/api/gbase/client/MetadataEntryExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 47
    new-instance v0, Lcom/google/api/gbase/client/MetadataEntryExtension;

    invoke-direct {v0, p0}, Lcom/google/api/gbase/client/MetadataEntryExtension;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseEntry;->metadata:Lcom/google/api/gbase/client/MetadataEntryExtension;

    .line 55
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-direct {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseEntry;->googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    .line 56
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseEntry;->googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 57
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 110
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 112
    invoke-static {p1}, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->declareAllExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 113
    return-void
.end method

.method public getGoogleBaseAttributes()Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseEntry;->googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    return-object v0
.end method

.method public getGoogleBaseMetadata()Lcom/google/api/gbase/client/MetadataEntryExtension;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseEntry;->metadata:Lcom/google/api/gbase/client/MetadataEntryExtension;

    return-object v0
.end method

.method public getMediaFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<",
            "Lcom/google/api/gbase/client/GoogleBaseMediaFeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-class v3, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v3}, Lcom/google/api/gbase/client/GoogleBaseEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "extensions":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/extensions/FeedLink;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FeedLink;

    .line 94
    .local v0, "extension":Lcom/google/gdata/data/extensions/FeedLink;
    const-string v3, "media"

    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/FeedLink;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    .end local v0    # "extension":Lcom/google/gdata/data/extensions/FeedLink;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
