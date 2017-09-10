.class public Lcom/google/api/gbase/client/GoogleBaseService;
.super Lcom/google/gdata/client/media/MediaService;
.source "GoogleBaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/GoogleBaseService$Versions;
    }
.end annotation


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final GOOGLE_BASE_SERVICE:Ljava/lang/String; = "gbase"

.field public static final GOOGLE_BASE_SERVICE_VERSION:Ljava/lang/String;


# instance fields
.field protected application:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBase-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/api/gbase/client/GoogleBaseService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseService;->GOOGLE_BASE_SERVICE_VERSION:Ljava/lang/String;

    .line 89
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseService;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseService$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "gbase"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseService;->application:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/google/api/gbase/client/GoogleBaseService;->addExtensions()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "developerKey"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseService;-><init>(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "gbase"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseService;->application:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/google/api/gbase/client/GoogleBaseService;->addExtensions()V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "developerKey"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "domainName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1, p3, p4}, Lcom/google/api/gbase/client/GoogleBaseService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V
    .locals 5
    .param p1, "iEntry"    # Lcom/google/gdata/data/IEntry;

    .prologue
    .line 429
    instance-of v2, p1, Lcom/google/gdata/data/BaseEntry;

    if-nez v2, :cond_0

    .line 430
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected entry type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    .line 433
    check-cast v1, Lcom/google/gdata/data/BaseEntry;

    .line 435
    .local v1, "e":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    const-class v2, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/BaseEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    .line 436
    .local v0, "attrs":Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
    if-nez v0, :cond_1

    .line 440
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseService;->application:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->setApplication(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addApplicationAttribute(Lcom/google/gdata/data/IFeed;)V
    .locals 9
    .param p1, "iFeed"    # Lcom/google/gdata/data/IFeed;

    .prologue
    .line 450
    instance-of v6, p1, Lcom/google/gdata/data/BaseFeed;

    if-nez v6, :cond_0

    .line 451
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected feed type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v0, p1

    .line 453
    check-cast v0, Lcom/google/gdata/data/BaseFeed;

    .line 454
    .local v0, "batchFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v1

    .line 455
    .local v1, "defaultType":Lcom/google/gdata/data/batch/BatchOperationType;
    if-nez v1, :cond_1

    .line 456
    sget-object v1, Lcom/google/gdata/data/batch/BatchOperationType;->INSERT:Lcom/google/gdata/data/batch/BatchOperationType;

    .line 458
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/data/BaseFeed;->getEntries()Ljava/util/List;

    move-result-object v2

    .line 459
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/data/BaseEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/BaseEntry;

    .line 460
    .local v3, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-static {v3}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v5

    .line 461
    .local v5, "type":Lcom/google/gdata/data/batch/BatchOperationType;
    if-nez v5, :cond_3

    .line 462
    move-object v5, v1

    .line 464
    :cond_3
    sget-object v6, Lcom/google/gdata/data/batch/BatchOperationType;->INSERT:Lcom/google/gdata/data/batch/BatchOperationType;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/google/gdata/data/batch/BatchOperationType;->UPDATE:Lcom/google/gdata/data/batch/BatchOperationType;

    if-ne v5, v6, :cond_2

    .line 466
    :cond_4
    invoke-direct {p0, v3}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V

    goto :goto_0

    .line 469
    .end local v3    # "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    .end local v5    # "type":Lcom/google/gdata/data/batch/BatchOperationType;
    :cond_5
    return-void
.end method

.method private addExtensions()V
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    .line 477
    .local v0, "extensionProfile":Lcom/google/gdata/data/ExtensionProfile;
    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->declareAllExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 478
    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 479
    return-void
.end method


# virtual methods
.method public batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "TF;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/client/batch/BatchInterruptedException;
        }
    .end annotation

    .prologue
    .line 417
    .local p2, "f":Lcom/google/gdata/data/IFeed;, "TF;"
    invoke-direct {p0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IFeed;)V

    .line 418
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/media/MediaService;->batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseEntry;
    .locals 1
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 300
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseEntry;
    .locals 1
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p2, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 279
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 208
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p2, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 190
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public getMediaEntry(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseMediaEntry;
    .locals 1
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 323
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    return-object v0
.end method

.method public getMediaEntry(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseMediaEntry;
    .locals 1
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p2, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 348
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    return-object v0
.end method

.method public getMediaFeed(Ljava/net/URL;)Lcom/google/api/gbase/client/GoogleBaseMediaFeed;
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 226
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    return-object v0
.end method

.method public getMediaFeed(Ljava/net/URL;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseMediaFeed;
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p2, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 251
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseMediaFeed;

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseService;->GOOGLE_BASE_SERVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/client/media/MediaService;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 410
    .local p2, "e":Lcom/google/gdata/data/IEntry;, "TE;"
    invoke-direct {p0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V

    .line 411
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/media/MediaService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 397
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0}, Lcom/google/api/gbase/client/GoogleBaseService;->query(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;Lcom/google/gdata/data/DateTime;)Lcom/google/api/gbase/client/GoogleBaseFeed;
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p2, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 375
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    return-object v0
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 403
    .local p2, "e":Lcom/google/gdata/data/IEntry;, "TE;"
    invoke-direct {p0, p2}, Lcom/google/api/gbase/client/GoogleBaseService;->addApplicationAttribute(Lcom/google/gdata/data/IEntry;)V

    .line 404
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/media/MediaService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method
