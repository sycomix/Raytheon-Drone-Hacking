.class public Lcom/google/gdata/data/photos/GphotoEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "GphotoEntry.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;
.implements Lcom/google/gdata/data/photos/AtomData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/photos/GphotoEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/media/MediaEntry",
        "<TE;>;",
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
    .line 51
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 52
    new-instance v0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    .line 53
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 60
    new-instance v0, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    .line 61
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 68
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 69
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 70
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getSummary()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    .line 158
    .local v0, "summary":Lcom/google/gdata/data/TextConstruct;
    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    new-instance v1, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;

    invoke-direct {v1, v0}, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;-><init>(Lcom/google/gdata/data/TextConstruct;)V

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/media/MediaEntry;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    .line 167
    :cond_1
    return-void

    .line 163
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    :cond_2
    throw v1
.end method

.method public bridge synthetic getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getAdaptedEntry()Lcom/google/gdata/data/photos/GphotoEntry;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptedEntry()Lcom/google/gdata/data/photos/GphotoEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/photos/GphotoEntry",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    invoke-super {p0}, Lcom/google/gdata/data/media/MediaEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoEntry;

    return-object v0
.end method

.method public getDescription()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getSummary()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public varargs getFeed(Ljava/lang/Class;[Ljava/lang/String;)Lcom/google/gdata/data/photos/GphotoFeed;
    .locals 7
    .param p2, "kinds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lcom/google/gdata/data/photos/GphotoFeed",
            "<TF;>;>(",
            "Ljava/lang/Class",
            "<TF;>;[",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    .local p1, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    iget-object v5, p0, Lcom/google/gdata/data/photos/GphotoEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v5, v5, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    if-nez v5, :cond_0

    .line 90
    new-instance v5, Lcom/google/gdata/util/ServiceException;

    const-string v6, "Entry is not associated with a GData service."

    invoke-direct {v5, v6}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoEntry;->getFeedLink()Lcom/google/gdata/data/Link;

    move-result-object v1

    .line 94
    .local v1, "feedLink":Lcom/google/gdata/data/Link;
    if-nez v1, :cond_1

    .line 95
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Missing feed link."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_1
    invoke-virtual {v1}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "feedHref":Ljava/lang/String;
    if-eqz p2, :cond_4

    array-length v5, p2

    if-lez v5, :cond_4

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v4, "kindBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_3

    .line 101
    if-lez v3, :cond_2

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_3
    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?kind="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .end local v3    # "i":I
    .end local v4    # "kindBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "feedUrl":Ljava/net/URL;
    iget-object v5, p0, Lcom/google/gdata/data/photos/GphotoEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v5, v5, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v5, v2, p1}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/data/photos/GphotoFeed;

    return-object v5

    .line 107
    .end local v2    # "feedUrl":Ljava/net/URL;
    .restart local v3    # "i":I
    .restart local v4    # "kindBuilder":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&kind="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getFeedLink()Lcom/google/gdata/data/Link;
    .locals 3

    .prologue
    .line 77
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    const-string v1, "http://schemas.google.com/g/2005#feed"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/data/photos/GphotoEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 78
    .local v0, "feedLink":Lcom/google/gdata/data/Link;
    return-object v0
.end method

.method public getGphotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/GphotoData;->getGphotoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0
    .param p1, "description"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 146
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;->setSummary(Lcom/google/gdata/data/TextConstruct;)V

    .line 147
    return-void
.end method

.method public setGphotoId(Ljava/lang/Long;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 125
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->setGphotoId(Ljava/lang/Long;)V

    .line 126
    return-void
.end method

.method public setGphotoId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 132
    .local p0, "this":Lcom/google/gdata/data/photos/GphotoEntry;, "Lcom/google/gdata/data/photos/GphotoEntry<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry;->delegate:Lcom/google/gdata/data/photos/GphotoData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/GphotoData;->setGphotoId(Ljava/lang/String;)V

    .line 133
    return-void
.end method
