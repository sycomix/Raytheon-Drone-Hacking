.class public abstract Lcom/google/gdata/data/BaseFeed;
.super Lcom/google/gdata/data/Source;
.source "BaseFeed.java"

# interfaces
.implements Lcom/google/gdata/data/Kind$Adaptable;
.implements Lcom/google/gdata/data/Kind$Adaptor;
.implements Lcom/google/gdata/data/IFeed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/BaseFeed$1;,
        Lcom/google/gdata/data/BaseFeed$FeedHandler;,
        Lcom/google/gdata/data/BaseFeed$FeedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/google/gdata/data/BaseFeed;",
        "E:",
        "Lcom/google/gdata/data/BaseEntry;",
        ">",
        "Lcom/google/gdata/data/Source;",
        "Lcom/google/gdata/data/Kind$Adaptable;",
        "Lcom/google/gdata/data/Kind$Adaptor;",
        "Lcom/google/gdata/data/IFeed;"
    }
.end annotation


# static fields
.field private static final rssHeaderAttrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected entryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field

.field protected feedState:Lcom/google/gdata/data/BaseFeed$FeedState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 802
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/google/gdata/data/BaseFeed;->rssHeaderAttrs:Ljava/util/Collection;

    .line 806
    sget-object v0, Lcom/google/gdata/data/BaseFeed;->rssHeaderAttrs:Ljava/util/Collection;

    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "version"

    const-string v3, "2.0"

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 807
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/Source;-><init>()V

    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    .line 204
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedState;

    invoke-direct {v0}, Lcom/google/gdata/data/BaseFeed$FeedState;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    .line 205
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed;->entryClass:Ljava/lang/Class;

    .line 206
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    .local p2, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-direct {p0, p2}, Lcom/google/gdata/data/Source;-><init>(Lcom/google/gdata/data/Source;)V

    .line 191
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    .line 218
    iget-object v0, p2, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    .line 219
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed;->entryClass:Ljava/lang/Class;

    .line 221
    return-void
.end method

.method private generateEntries(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 583
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 584
    .local v0, "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 586
    .end local v0    # "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 587
    return-void
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;)Lcom/google/gdata/data/BaseFeed;
    .locals 1
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ParseSource;",
            ")",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 817
    invoke-static {p0, v0, v0}, Lcom/google/gdata/data/BaseFeed;->readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/data/BaseFeed;

    move-result-object v0

    return-object v0
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/data/BaseFeed;
    .locals 1
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lcom/google/gdata/data/BaseFeed;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/gdata/util/ParseUtil;->readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    return-object v0
.end method


# virtual methods
.method public addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V
    .locals 1
    .param p1, "adaptor"    # Lcom/google/gdata/data/Kind$Adaptor;

    .prologue
    .line 398
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/Kind$Adaptable;->addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 399
    return-void
.end method

.method public bridge synthetic addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Source;->addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public createEntry()Lcom/google/gdata/data/BaseEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->entryClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/BaseEntry;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 424
    .local v1, "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/BaseEntry;->setService(Lcom/google/gdata/client/Service;)V

    .line 428
    :cond_0
    return-object v1

    .line 417
    .end local v1    # "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 419
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic createEntry()Lcom/google/gdata/data/IEntry;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->createEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    return-object v0
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 234
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->createEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    .line 235
    .local v0, "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 236
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 555
    return-void
.end method

.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/gdata/data/BaseFeed;->generateFeedStart(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/util/Collection;)V

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;->generateEntries(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 576
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/BaseFeed;->generateFeedEnd(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    .line 577
    return-void
.end method

.method public generateFeedEnd(Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 2
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "feed"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public generateFeedStart(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/util/Collection;)V
    .locals 10
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    .local p3, "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 617
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v7

    .line 619
    .local v7, "openSearchNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 620
    .local v5, "nsDecls":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p1}, Lcom/google/gdata/data/ExtensionProfile;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 625
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "gd"

    const-string v2, "kind"

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "gd"

    const-string v2, "etag"

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isAfter(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "gd"

    const-string v2, "fields"

    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_2
    new-instance v6, Lcom/google/gdata/data/AttributeGenerator;

    invoke-direct {v6}, Lcom/google/gdata/data/AttributeGenerator;-><init>()V

    .line 651
    .local v6, "generator":Lcom/google/gdata/data/AttributeGenerator;
    invoke-virtual {p0, v6}, Lcom/google/gdata/data/BaseFeed;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 652
    invoke-virtual {p0, v4, v6}, Lcom/google/gdata/data/BaseFeed;->generateAttributes(Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V

    .line 654
    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "feed"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/BaseFeed;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 657
    invoke-virtual {p0, p2, p1}, Lcom/google/gdata/data/BaseFeed;->generateInnerAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 660
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getTotalResults()I

    move-result v0

    if-eq v0, v8, :cond_3

    .line 661
    const-string v0, "totalResults"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v7, v0, v9, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 665
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getStartIndex()I

    move-result v0

    if-eq v0, v8, :cond_4

    .line 666
    const-string v0, "startIndex"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v7, v0, v9, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 670
    :cond_4
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getItemsPerPage()I

    move-result v0

    if-eq v0, v8, :cond_5

    .line 671
    const-string v0, "itemsPerPage"

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v7, v0, v9, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 676
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/google/gdata/data/BaseFeed;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 677
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 16
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v15

    .line 696
    .local v15, "openSearchNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 697
    .local v14, "nsDecls":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-virtual {v14, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-virtual/range {p2 .. p2}, Lcom/google/gdata/data/ExtensionProfile;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 701
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "rss"

    sget-object v4, Lcom/google/gdata/data/BaseFeed;->rssHeaderAttrs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v14}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 703
    sget-object v4, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v5, "channel"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/gdata/data/BaseFeed;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 706
    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 709
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v2, :cond_1

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v2}, Lcom/google/gdata/util/XmlBlob;->getLang()Ljava/lang/String;

    move-result-object v12

    .line 711
    .local v12, "lang":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 712
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "language"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v12}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 716
    .end local v12    # "lang":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    if-eqz v2, :cond_2

    .line 717
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "lastBuildDate"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v5}, Lcom/google/gdata/data/DateTime;->toStringRfc822()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 721
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->categories:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/data/Category;

    .line 723
    .local v8, "cat":Lcom/google/gdata/data/Category;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/google/gdata/data/Category;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_0

    .line 725
    .end local v8    # "cat":Lcom/google/gdata/data/Category;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v2, :cond_4

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    const-string v3, "title"

    sget-object v4, Lcom/google/gdata/data/TextConstruct$RssFormat;->PLAIN_TEXT:Lcom/google/gdata/data/TextConstruct$RssFormat;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 732
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    if-eqz v2, :cond_10

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    const-string v3, "description"

    sget-object v4, Lcom/google/gdata/data/TextConstruct$RssFormat;->FULL_HTML:Lcom/google/gdata/data/TextConstruct$RssFormat;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 739
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/gdata/data/BaseFeed;->getHtmlLink()Lcom/google/gdata/data/Link;

    move-result-object v10

    .line 740
    .local v10, "htmlLink":Lcom/google/gdata/data/Link;
    if-eqz v10, :cond_5

    .line 741
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "link"

    const/4 v4, 0x0

    invoke-virtual {v10}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 744
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 745
    :cond_6
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "image"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 746
    sget-object v3, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v4, "url"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v2, :cond_7

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    const-string v3, "title"

    sget-object v4, Lcom/google/gdata/data/TextConstruct$RssFormat;->PLAIN_TEXT:Lcom/google/gdata/data/TextConstruct$RssFormat;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 752
    :cond_7
    if-eqz v10, :cond_8

    .line 753
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "link"

    const/4 v4, 0x0

    invoke-virtual {v10}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 755
    :cond_8
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 758
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    if-eqz v2, :cond_a

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    const-string v3, "copyright"

    sget-object v4, Lcom/google/gdata/data/TextConstruct$RssFormat;->PLAIN_TEXT:Lcom/google/gdata/data/TextConstruct$RssFormat;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 763
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/Person;

    const-string v3, "managingEditor"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/gdata/data/Person;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 767
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    if-eqz v2, :cond_c

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    invoke-virtual {v2}, Lcom/google/gdata/data/Generator;->getName()Ljava/lang/String;

    move-result-object v13

    .line 769
    .local v13, "name":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 770
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "generator"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v13}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 774
    .end local v13    # "name":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/gdata/data/BaseFeed;->getTotalResults()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    .line 775
    const-string v2, "totalResults"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v4, v4, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 779
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/gdata/data/BaseFeed;->getStartIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 780
    const-string v2, "startIndex"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v4, v4, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 784
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/gdata/data/BaseFeed;->getItemsPerPage()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    .line 785
    const-string v2, "itemsPerPage"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v4, v4, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 790
    :cond_f
    invoke-virtual/range {p0 .. p2}, Lcom/google/gdata/data/BaseFeed;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gdata/data/BaseEntry;

    .line 793
    .local v9, "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/google/gdata/data/BaseEntry;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_3

    .line 736
    .end local v9    # "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    .end local v10    # "htmlLink":Lcom/google/gdata/data/Link;
    :cond_10
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "description"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 746
    .restart local v10    # "htmlLink":Lcom/google/gdata/data/Link;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    goto/16 :goto_2

    .line 795
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 797
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "channel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 798
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "rss"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public getAdaptedFeed()Lcom/google/gdata/data/BaseFeed;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/Kind$AdaptorException;
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    const/4 v0, 0x0

    .line 1061
    .local v0, "adaptedFeed":Lcom/google/gdata/data/BaseFeed;
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getAdaptors()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Kind$Adaptor;

    .line 1062
    .local v1, "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    instance-of v5, v1, Lcom/google/gdata/data/BaseFeed;

    if-eqz v5, :cond_0

    .line 1067
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    move-object v0, v1

    .line 1069
    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    goto :goto_0

    .line 1075
    .end local v1    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    :cond_2
    if-eqz v0, :cond_4

    .line 1077
    if-eq v0, p0, :cond_3

    .line 1078
    iget-object v4, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    .line 1084
    .local v4, "sourceEntries":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_1
    invoke-virtual {v0}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1085
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/BaseEntry;

    .line 1086
    .local v2, "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    invoke-virtual {v0}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/gdata/data/BaseEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1081
    .end local v2    # "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    .end local v4    # "sourceEntries":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .restart local v4    # "sourceEntries":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v5, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1089
    .end local v4    # "sourceEntries":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_4
    return-object v0
.end method

.method public getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    .local p1, "adaptorClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/Kind$Adaptable;->getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;

    move-result-object v0

    return-object v0
.end method

.method public getAdaptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    invoke-interface {v0}, Lcom/google/gdata/data/Kind$Adaptable;->getAdaptors()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCanPost()Z
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-boolean v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->canPost:Z

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getEntries(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/data/BaseEntry;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1096
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    .local p1, "returnClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v1, "adaptedEntries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/BaseEntry;

    .line 1099
    .local v2, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-virtual {v2, p1}, Lcom/google/gdata/data/BaseEntry;->getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 1100
    .local v0, "adapted":Lcom/google/gdata/data/BaseEntry;, "TT;"
    if-eqz v0, :cond_0

    .line 1101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1105
    .end local v0    # "adapted":Lcom/google/gdata/data/BaseEntry;, "TT;"
    .end local v2    # "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getEntryPostLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getEntryPostLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPostLink()Lcom/google/gdata/data/Link;
    .locals 3

    .prologue
    .line 434
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    const-string v1, "http://schemas.google.com/g/2005#post"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 435
    .local v0, "postLink":Lcom/google/gdata/data/Link;
    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getFeedBatchLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getFeedBatchLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFeedBatchLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 473
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    const-string v0, "http://schemas.google.com/g/2005#batch"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenerator()Lcom/google/gdata/data/IGenerator;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-super {p0}, Lcom/google/gdata/data/Source;->getGenerator()Lcom/google/gdata/data/Generator;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getItemsPerPage()I
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ILink;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/Source;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNextLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getNextLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getNextLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 451
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    const-string v0, "next"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreviousLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getPreviousLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 461
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    const-string v0, "previous"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Lcom/google/gdata/data/BaseFeed;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-nez v3, :cond_0

    .line 485
    new-instance v3, Lcom/google/gdata/util/ServiceException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->feedNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v3

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getSelfLink()Lcom/google/gdata/data/Link;

    move-result-object v2

    .line 489
    .local v2, "selfLink":Lcom/google/gdata/data/Link;
    if-nez v2, :cond_1

    .line 490
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Feed cannot be retrieved"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v2}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 496
    .local v1, "feedUrl":Ljava/net/URL;
    :try_start_0
    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 497
    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v5, v5, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/BaseFeed;

    .line 504
    :goto_0
    return-object v3

    .line 500
    :cond_2
    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v3, v3, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/google/gdata/data/BaseFeed;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/BaseFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/google/gdata/util/NotModifiedException;
    move-object v3, p0

    .line 504
    goto :goto_0
.end method

.method public bridge synthetic getSelfLink()Lcom/google/gdata/data/ILink;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getSelfLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSelfLink()Lcom/google/gdata/data/Link;
    .locals 3

    .prologue
    .line 440
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    const-string v1, "self"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/data/BaseFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 441
    .local v0, "postLink":Lcom/google/gdata/data/Link;
    return-object v0
.end method

.method public getService()Lcom/google/gdata/client/Service;
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    return v0
.end method

.method public bridge synthetic getSubtitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-super {p0}, Lcom/google/gdata/data/Source;->getSubtitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-super {p0}, Lcom/google/gdata/data/Source;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public getTotalResults()I
    .locals 1

    .prologue
    .line 341
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    return v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcom/google/gdata/data/BaseEntry;)Lcom/google/gdata/data/BaseEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TE;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    .local p1, "newEntry":Lcom/google/gdata/data/BaseEntry;, "TT;"
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    if-nez v2, :cond_0

    .line 527
    new-instance v2, Lcom/google/gdata/util/ServiceException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->entryNotAssociated:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v2

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getEntryPostLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 531
    .local v0, "postLink":Lcom/google/gdata/data/Link;
    if-nez v0, :cond_1

    .line 532
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Media cannot be inserted"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, "postUrl":Ljava/net/URL;
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v2, v1, p1}, Lcom/google/gdata/client/Service;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/BaseEntry;

    return-object v2
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "source"    # Lcom/google/gdata/data/XmlEventSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 883
    .local v0, "handler":Lcom/google/gdata/data/BaseFeed$FeedHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler;"
    new-instance v1, Lcom/google/gdata/util/EventSourceParser;

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "feed"

    invoke-direct {v1, v0, v2, v3}, Lcom/google/gdata/util/EventSourceParser;-><init>(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/google/gdata/util/EventSourceParser;->parse(Lcom/google/gdata/data/XmlEventSource;)V

    .line 884
    return-void
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 848
    .local v0, "handler":Lcom/google/gdata/data/BaseFeed$FeedHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler;"
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "feed"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    new-instance v0, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 867
    .local v0, "handler":Lcom/google/gdata/data/BaseFeed$FeedHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler;"
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "feed"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public setCanPost(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 268
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-boolean p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->canPost:Z

    .line 269
    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    .local p1, "entryList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 300
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->etag:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public bridge synthetic setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/IGenerator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Source;->setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Generator;

    move-result-object v0

    return-object v0
.end method

.method public setItemsPerPage(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 384
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    .line 385
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 332
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->kind:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setSelectedFields(Ljava/lang/String;)V
    .locals 1
    .param p1, "fields"    # Ljava/lang/String;

    .prologue
    .line 316
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->fields:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setService(Lcom/google/gdata/client/Service;)V
    .locals 3
    .param p1, "v"    # Lcom/google/gdata/client/Service;

    .prologue
    .line 247
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v2, Lcom/google/gdata/data/BaseFeed$FeedState;->service:Lcom/google/gdata/client/Service;

    .line 250
    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 251
    .local v0, "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/BaseEntry;->setService(Lcom/google/gdata/client/Service;)V

    goto :goto_0

    .line 253
    .end local v0    # "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    :cond_0
    return-void
.end method

.method public setStartIndex(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 366
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    .line 367
    return-void
.end method

.method public setTotalResults(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 350
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    .line 351
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 277
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseFeed$FeedState;->versionId:Ljava/lang/String;

    .line 278
    return-void
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 4
    .param p1, "ev"    # Lcom/google/gdata/data/ExtensionVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>;"
    iget-object v3, p0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 544
    .local v0, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<TE;>;"
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/BaseFeed;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_0

    .line 546
    .end local v0    # "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/Link;

    .line 547
    .local v2, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {p0, p1, v2}, Lcom/google/gdata/data/BaseFeed;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_1

    .line 549
    .end local v2    # "link":Lcom/google/gdata/data/Link;
    :cond_1
    invoke-super {p0, p1}, Lcom/google/gdata/data/Source;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 550
    return-void
.end method
