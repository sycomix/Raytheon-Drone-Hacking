.class public Lcom/google/gdata/model/atom/Feed;
.super Lcom/google/gdata/model/atom/Source;
.source "Feed.java"

# interfaces
.implements Lcom/google/gdata/data/IFeed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/atom/Feed$FeedState;
    }
.end annotation


# static fields
.field public static final ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atom/Feed;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_INDEX:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field public static final XML_BASE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final feedState:Lcom/google/gdata/model/atom/Feed$FeedState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "feed"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/model/atom/Feed;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 97
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->xmlNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "base"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/net/URI;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Feed;->XML_BASE:Lcom/google/gdata/model/AttributeKey;

    .line 103
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->openSearch1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "itemsPerPage"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Feed;->ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;

    .line 110
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->openSearch1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "startIndex"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Feed;->START_INDEX:Lcom/google/gdata/model/ElementKey;

    .line 117
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->openSearch1_1Ns:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "totalResults"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atom/Feed;->TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Feed;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 195
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atom/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atom/Feed;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Source;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 204
    new-instance v0, Lcom/google/gdata/model/atom/Feed$FeedState;

    invoke-direct {v0}, Lcom/google/gdata/model/atom/Feed$FeedState;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    .line 205
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Feed;)V
    .locals 1
    .param p2, "source"    # Lcom/google/gdata/model/atom/Feed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atom/Feed;",
            ">;",
            "Lcom/google/gdata/model/atom/Feed;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/atom/Feed;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/atom/Source;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 216
    iget-object v0, p2, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iput-object v0, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    .line 217
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 125
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Source;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 133
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 136
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 137
    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 138
    sget-object v1, Lcom/google/gdata/model/gd/GdAttributes;->FIELDS:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 139
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->XML_BASE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 140
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 141
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->START_INDEX:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 142
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 143
    sget-object v1, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 144
    invoke-interface {v0}, Lcom/google/gdata/model/ElementCreator;->addUndeclaredElementMarker()Lcom/google/gdata/model/ElementCreator;

    .line 145
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public addEntry(Lcom/google/gdata/model/atom/Entry;)V
    .locals 0
    .param p1, "entry"    # Lcom/google/gdata/model/atom/Entry;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atom/Feed;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 438
    return-void
.end method

.method public bridge synthetic addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/model/atom/Source;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public clearEntries()V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 433
    return-void
.end method

.method public bridge synthetic createEntry()Lcom/google/gdata/data/IEntry;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->createEntry()Lcom/google/gdata/model/atom/Entry;

    move-result-object v0

    return-object v0
.end method

.method public createEntry()Lcom/google/gdata/model/atom/Entry;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->createEntry(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/atom/Entry;

    move-result-object v0

    return-object v0
.end method

.method public createEntry(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/atom/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/google/gdata/model/atom/Entry;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<*TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "entryKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*TE;>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/atom/Entry;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .local v1, "entry":Lcom/google/gdata/model/atom/Entry;, "TE;"
    iget-object v2, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/atom/Entry;->setService(Lcom/google/gdata/client/Service;)V

    .line 468
    :cond_0
    return-object v1

    .line 459
    .end local v1    # "entry":Lcom/google/gdata/model/atom/Entry;, "TE;"
    :catch_0
    move-exception v0

    .line 460
    .local v0, "cce":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCanPost()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-boolean v0, v0, Lcom/google/gdata/model/atom/Feed$FeedState;->canPost:Z

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/gdata/model/atom/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getEntries(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/atom/Entry;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<*TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atom/Feed;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntries(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/atom/Entry;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p1, "returnClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Entry;

    .line 615
    .local v0, "entry":Lcom/google/gdata/model/atom/Entry;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    .end local v0    # "entry":Lcom/google/gdata/model/atom/Entry;
    :cond_1
    return-object v2
.end method

.method public bridge synthetic getEntryPostLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getEntryPostLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPostLink()Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 473
    const-string v1, "http://schemas.google.com/g/2005#post"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/Feed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 474
    .local v0, "postLink":Lcom/google/gdata/model/atom/Link;
    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getFeedBatchLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getFeedBatchLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFeedBatchLink()Lcom/google/gdata/model/atom/Link;
    .locals 2

    .prologue
    .line 512
    const-string v0, "http://schemas.google.com/g/2005#batch"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/Feed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenerator()Lcom/google/gdata/data/IGenerator;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/gdata/model/atom/Source;->getGenerator()Lcom/google/gdata/model/atom/Source$Generator;

    move-result-object v0

    return-object v0
.end method

.method public getItemsPerPage()I
    .locals 2

    .prologue
    .line 392
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/Feed;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 393
    .local v0, "v":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 394
    const/4 v1, -0x1

    .line 396
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/atom/Source;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNextLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getNextLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getNextLink()Lcom/google/gdata/model/atom/Link;
    .locals 2

    .prologue
    .line 490
    const-string v0, "next"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/Feed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreviousLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getPreviousLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousLink()Lcom/google/gdata/model/atom/Link;
    .locals 2

    .prologue
    .line 500
    const-string v0, "previous"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/Feed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->FIELDS:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Lcom/google/gdata/model/atom/Feed;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v4, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v4, v4, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-nez v4, :cond_0

    .line 523
    new-instance v4, Lcom/google/gdata/util/ServiceException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->feedNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v4, v5}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v4

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getSelfLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v3

    .line 527
    .local v3, "selfLink":Lcom/google/gdata/model/atom/Link;
    if-nez v3, :cond_1

    .line 528
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Feed cannot be retrieved"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 530
    :cond_1
    invoke-virtual {v3}, Lcom/google/gdata/model/atom/Link;->getHrefUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 534
    .local v2, "feedUrl":Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "etag":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 536
    iget-object v4, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v4, v4, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v1}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/atom/Feed;

    .line 542
    .end local v1    # "etag":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 538
    .restart local v1    # "etag":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v4, v4, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getUpdated()Lcom/google/gdata/data/DateTime;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/atom/Feed;
    :try_end_0
    .catch Lcom/google/gdata/util/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    .end local v1    # "etag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/google/gdata/util/NotModifiedException;
    move-object v4, p0

    .line 542
    goto :goto_0
.end method

.method public bridge synthetic getSelfLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getSelfLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelfLink()Lcom/google/gdata/model/atom/Link;
    .locals 3

    .prologue
    .line 479
    const-string v1, "self"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/model/atom/Feed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 480
    .local v0, "postLink":Lcom/google/gdata/model/atom/Link;
    return-object v0
.end method

.method public getService()Lcom/google/gdata/client/Service;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 2

    .prologue
    .line 367
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->START_INDEX:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/Feed;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 368
    .local v0, "v":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 369
    const/4 v1, -0x1

    .line 371
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic getSubtitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/gdata/model/atom/Source;->getSubtitle()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/gdata/model/atom/Source;->getTitle()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    return-object v0
.end method

.method public getTotalResults()I
    .locals 2

    .prologue
    .line 342
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atom/Feed;->getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 343
    .local v0, "v":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 344
    const/4 v1, -0x1

    .line 346
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/model/atom/Feed$FeedState;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlBase()Ljava/net/URI;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->XML_BASE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public insert(Lcom/google/gdata/model/atom/Entry;)Lcom/google/gdata/model/atom/Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/atom/Entry;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "newEntry":Lcom/google/gdata/model/atom/Entry;, "TT;"
    iget-object v2, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-nez v2, :cond_0

    .line 571
    new-instance v2, Lcom/google/gdata/util/ServiceException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v2

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getEntryPostLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    .line 575
    .local v0, "postLink":Lcom/google/gdata/model/atom/Link;
    if-nez v0, :cond_1

    .line 576
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Media cannot be inserted"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 578
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Link;->getHrefUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 579
    .local v1, "postUrl":Ljava/net/URL;
    iget-object v2, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v2, v1, p1}, Lcom/google/gdata/client/Service;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/atom/Entry;

    return-object v2
.end method

.method protected narrow(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 2
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "meta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-static {p0}, Lcom/google/gdata/model/atom/Kinds;->getElementKind(Lcom/google/gdata/model/Element;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "kind":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0, p0, p1, v0}, Lcom/google/gdata/model/atom/Feed;->adapt(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/String;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 594
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/atom/Source;->narrow(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v1

    goto :goto_0
.end method

.method public removeEntry(Lcom/google/gdata/model/atom/Entry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/google/gdata/model/atom/Entry;

    .prologue
    .line 442
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Feed;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeLinks()V
    .locals 1

    .prologue
    .line 550
    sget-object v0, Lcom/google/gdata/model/atom/Link;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 551
    return-void
.end method

.method public resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 2
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v1, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getEntryPostLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/google/gdata/model/atom/Feed$FeedState;->canPost:Z

    .line 604
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/atom/Source;->resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanPost(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iput-boolean p1, v0, Lcom/google/gdata/model/atom/Feed$FeedState;->canPost:Z

    .line 252
    return-void
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/model/atom/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/model/atom/Entry;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->clearEntries()V

    .line 425
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Entry;

    .line 426
    .local v0, "entry":Lcom/google/gdata/model/atom/Entry;
    sget-object v2, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v2, v0}, Lcom/google/gdata/model/atom/Feed;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 428
    .end local v0    # "entry":Lcom/google/gdata/model/atom/Entry;
    :cond_0
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->ETAG:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Feed;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 286
    return-void
.end method

.method public bridge synthetic setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/IGenerator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/model/atom/Source;->setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/model/atom/Source$Generator;

    move-result-object v0

    return-object v0
.end method

.method public setItemsPerPage(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 405
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 406
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;

    new-instance v1, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Feed;->ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v1, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/Feed;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->ITEMS_PER_PAGE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Feed;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 302
    return-void
.end method

.method public setSelectedFields(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->FIELDS:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Feed;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 318
    return-void
.end method

.method public setService(Lcom/google/gdata/client/Service;)V
    .locals 3
    .param p1, "v"    # Lcom/google/gdata/client/Service;

    .prologue
    .line 230
    iget-object v2, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iput-object p1, v2, Lcom/google/gdata/model/atom/Feed$FeedState;->service:Lcom/google/gdata/client/Service;

    .line 233
    invoke-virtual {p0}, Lcom/google/gdata/model/atom/Feed;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Entry;

    .line 234
    .local v0, "entry":Lcom/google/gdata/model/atom/Entry;
    invoke-virtual {v0, p1}, Lcom/google/gdata/model/atom/Entry;->setService(Lcom/google/gdata/client/Service;)V

    goto :goto_0

    .line 236
    .end local v0    # "entry":Lcom/google/gdata/model/atom/Entry;
    :cond_0
    return-void
.end method

.method public setStartIndex(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 379
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 380
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->START_INDEX:Lcom/google/gdata/model/ElementKey;

    new-instance v1, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Feed;->START_INDEX:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v1, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/Feed;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->START_INDEX:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method

.method public setTotalResults(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 355
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 356
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;

    new-instance v1, Lcom/google/gdata/model/Element;

    sget-object v2, Lcom/google/gdata/model/atom/Feed;->TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;

    invoke-direct {v1, v2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/model/atom/Feed;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->TOTAL_RESULTS:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atom/Feed;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/gdata/model/atom/Feed;->feedState:Lcom/google/gdata/model/atom/Feed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/model/atom/Feed$FeedState;->versionId:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setXmlBase(Ljava/net/URI;)V
    .locals 1
    .param p1, "v"    # Ljava/net/URI;

    .prologue
    .line 333
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->XML_BASE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atom/Feed;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 334
    return-void
.end method
