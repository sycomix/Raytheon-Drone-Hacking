.class public Lcom/google/gdata/data/photos/GphotoFeed;
.super Lcom/google/gdata/data/media/MediaFeed;
.source "GphotoFeed.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;
.implements Lcom/google/gdata/data/photos/AtomData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/photos/GphotoFeed$RssLink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/google/gdata/data/photos/GphotoFeed;",
        ">",
        "Lcom/google/gdata/data/media/MediaFeed",
        "<TF;",
        "Lcom/google/gdata/data/photos/GphotoEntry;",
        ">;",
        "Lcom/google/gdata/data/photos/GphotoData;",
        "Lcom/google/gdata/data/photos/AtomData;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/gdata/data/photos/GphotoData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    const-class v0, Lcom/google/gdata/data/photos/GphotoEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>(Ljava/lang/Class;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/photos/GphotoEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 72
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/photos/GphotoEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/photos/GphotoEntry;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaFeed;-><init>(Ljava/lang/Class;)V

    .line 62
    new-instance v0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .param p2, "sourceFeed"    # Lcom/google/gdata/data/BaseFeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/photos/GphotoEntry;",
            ">;",
            "Lcom/google/gdata/data/BaseFeed;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/photos/GphotoEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/media/MediaFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 83
    new-instance v0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    .line 84
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 91
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 92
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 93
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    const-string v2, "previous"

    sget-object v3, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/gdata/data/photos/GphotoFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v1

    .line 104
    .local v1, "prevLink":Lcom/google/gdata/data/Link;
    const-string v2, "next"

    sget-object v3, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/gdata/data/photos/GphotoFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 105
    .local v0, "nextLink":Lcom/google/gdata/data/Link;
    if-eqz v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    new-instance v3, Lcom/google/gdata/data/photos/GphotoFeed$RssLink;

    invoke-direct {v3, v1}, Lcom/google/gdata/data/photos/GphotoFeed$RssLink;-><init>(Lcom/google/gdata/data/Link;)V

    invoke-interface {v2, v3}, Lcom/google/gdata/data/photos/GphotoData;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 108
    :cond_0
    if-eqz v0, :cond_1

    .line 109
    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    new-instance v3, Lcom/google/gdata/data/photos/GphotoFeed$RssLink;

    invoke-direct {v3, v0}, Lcom/google/gdata/data/photos/GphotoFeed$RssLink;-><init>(Lcom/google/gdata/data/Link;)V

    invoke-interface {v2, v3}, Lcom/google/gdata/data/photos/GphotoData;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 112
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/media/MediaFeed;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 113
    return-void
.end method

.method public getDescription()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoFeed;->getSubtitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public getGphotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/GphotoData;->getGphotoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0
    .param p1, "description"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 151
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;->setSubtitle(Lcom/google/gdata/data/TextConstruct;)V

    .line 152
    return-void
.end method

.method public setGphotoId(Ljava/lang/Long;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 165
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->setGphotoId(Ljava/lang/Long;)V

    .line 166
    return-void
.end method

.method public setGphotoId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 172
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoFeed;, "Lcom/google/gdata/data/photos/GphotoFeed<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeed;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->setGphotoId(Ljava/lang/String;)V

    .line 173
    return-void
.end method
