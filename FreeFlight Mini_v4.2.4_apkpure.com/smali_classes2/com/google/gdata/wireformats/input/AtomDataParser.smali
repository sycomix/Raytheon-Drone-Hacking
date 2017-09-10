.class public Lcom/google/gdata/wireformats/input/AtomDataParser;
.super Lcom/google/gdata/wireformats/input/XmlInputParser;
.source "AtomDataParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/input/XmlInputParser",
        "<",
        "Lcom/google/gdata/data/IAtom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    const-class v1, Lcom/google/gdata/data/IAtom;

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/wireformats/input/XmlInputParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;
    .locals 6
    .param p1, "eventSource"    # Lcom/google/gdata/data/XmlEventSource;
    .param p2, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/gdata/data/IAtom;",
            ">(",
            "Lcom/google/gdata/data/XmlEventSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v3

    const-string v4, "No extension profile"

    invoke-static {v3, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IAtom;

    .line 90
    .local v2, "result":Lcom/google/gdata/data/IAtom;, "TR;"
    instance-of v3, v2, Lcom/google/gdata/data/BaseEntry;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 91
    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .line 92
    .local v0, "entryResult":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    .line 100
    .end local v0    # "entryResult":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    :goto_0
    return-object v2

    .line 93
    :cond_0
    instance-of v3, v2, Lcom/google/gdata/data/BaseFeed;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 94
    check-cast v1, Lcom/google/gdata/data/BaseFeed;

    .line 95
    .local v1, "feedResult":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    goto :goto_0

    .line 97
    .end local v1    # "feedResult":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    :cond_1
    new-instance v3, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid result class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;
    .locals 8
    .param p1, "inputReader"    # Ljava/io/Reader;
    .param p2, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/gdata/data/IAtom;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v5

    const-string v6, "No extension profile"

    invoke-static {v5, v6}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/IAtom;

    .line 57
    .local v4, "result":Lcom/google/gdata/data/IAtom;, "TR;"
    instance-of v5, v4, Lcom/google/gdata/data/BaseEntry;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 58
    check-cast v2, Lcom/google/gdata/data/BaseEntry;

    .line 59
    .local v2, "entryResult":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 60
    const-class v5, Lcom/google/gdata/data/Entry;

    if-ne p3, v5, :cond_0

    .line 61
    invoke-virtual {v2}, Lcom/google/gdata/data/BaseEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    .line 62
    .local v0, "adaptedEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/google/gdata/data/IAtom;, "TR;"
    check-cast v4, Lcom/google/gdata/data/IAtom;

    .line 79
    .end local v0    # "adaptedEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    .end local v2    # "entryResult":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    .restart local v4    # "result":Lcom/google/gdata/data/IAtom;, "TR;"
    :cond_0
    :goto_0
    return-object v4

    .line 66
    :cond_1
    instance-of v5, v4, Lcom/google/gdata/data/BaseFeed;

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 67
    check-cast v3, Lcom/google/gdata/data/BaseFeed;

    .line 68
    .local v3, "feedResult":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 69
    const-class v5, Lcom/google/gdata/data/Feed;

    if-ne p3, v5, :cond_0

    .line 70
    invoke-virtual {v3}, Lcom/google/gdata/data/BaseFeed;->getAdaptedFeed()Lcom/google/gdata/data/BaseFeed;

    move-result-object v1

    .line 71
    .local v1, "adaptedFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/google/gdata/data/IAtom;, "TR;"
    check-cast v4, Lcom/google/gdata/data/IAtom;

    .restart local v4    # "result":Lcom/google/gdata/data/IAtom;, "TR;"
    goto :goto_0

    .line 76
    .end local v1    # "adaptedFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    .end local v3    # "feedResult":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    :cond_2
    new-instance v5, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid result class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected bridge synthetic parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/data/XmlEventSource;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .param p3, "x2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/Reader;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .param p3, "x2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/AtomDataParser;->parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/IAtom;

    move-result-object v0

    return-object v0
.end method
