.class public Lcom/google/gdata/client/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/Service$ClientOutputProperties;,
        Lcom/google/gdata/client/Service$ClientInputProperties;,
        Lcom/google/gdata/client/Service$ClientStreamProperties;,
        Lcom/google/gdata/client/Service$GDataRequestFactory;,
        Lcom/google/gdata/client/Service$GDataRequest;,
        Lcom/google/gdata/client/Service$Versions;
    }
.end annotation


# static fields
.field private static final BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

.field private static final CORE_VERSION:Lcom/google/gdata/util/Version;

.field private static final SERVICE_VERSION:Ljava/lang/String;


# instance fields
.field private altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

.field protected connectTimeout:I

.field private contentType:Lcom/google/gdata/util/ContentType;

.field protected extProfile:Lcom/google/gdata/data/ExtensionProfile;

.field protected final metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

.field private protocolVersion:Lcom/google/gdata/util/Version;

.field readTimeout:I

.field protected requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

.field private strictValidation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GData-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(gzip)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/Service;->SERVICE_VERSION:Ljava/lang/String;

    .line 146
    const-class v0, Lcom/google/gdata/client/Service;

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/Service;->CORE_VERSION:Lcom/google/gdata/util/Version;

    .line 555
    new-instance v0, Lcom/google/gdata/wireformats/AltRegistry;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/AltRegistry;-><init>()V

    sput-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    .line 558
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    new-instance v2, Lcom/google/gdata/wireformats/input/AtomDualParser;

    invoke-direct {v2}, Lcom/google/gdata/wireformats/input/AtomDualParser;-><init>()V

    new-instance v3, Lcom/google/gdata/wireformats/output/AtomDualGenerator;

    invoke-direct {v3}, Lcom/google/gdata/wireformats/output/AtomDualGenerator;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 562
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    new-instance v2, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;

    invoke-direct {v2}, Lcom/google/gdata/wireformats/input/AtomServiceDualParser;-><init>()V

    new-instance v3, Lcom/google/gdata/wireformats/output/AtomServiceDualGenerator;

    invoke-direct {v3}, Lcom/google/gdata/wireformats/output/AtomServiceDualGenerator;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 566
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gdata/wireformats/output/AtomDualGenerator;

    sget-object v4, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    invoke-direct {v3, v4}, Lcom/google/gdata/wireformats/output/AtomDualGenerator;-><init>(Lcom/google/gdata/wireformats/AltFormat;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 571
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltRegistry;->lock()V

    .line 572
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 662
    new-instance v0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;

    invoke-direct {v0}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    .line 799
    sget-object v0, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    iput-object v0, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    .line 822
    iput v1, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    .line 847
    iput v1, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    .line 871
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    iput-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    .line 522
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/Service;->initProtocolVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    .line 531
    new-instance v0, Lcom/google/gdata/data/Feed;

    invoke-direct {v0}, Lcom/google/gdata/data/Feed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Feed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 535
    new-instance v0, Lcom/google/gdata/model/MetadataRegistry;

    invoke-direct {v0}, Lcom/google/gdata/model/MetadataRegistry;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    .line 536
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-static {v0}, Lcom/google/gdata/model/atom/Feed;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 537
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-static {v0}, Lcom/google/gdata/model/transforms/atom/AtomVersionTransforms;->addTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 538
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-static {v0}, Lcom/google/gdata/model/transforms/atompub/AtompubVersionTransforms;->addTransforms(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 539
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/client/Service$GDataRequest;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/Service$GDataRequest;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/gdata/client/Service;->computeQueryMap(Lcom/google/gdata/client/Service$GDataRequest;)Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    return-object v0
.end method

.method private static computeQueryMap(Lcom/google/gdata/client/Service$GDataRequest;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 2
    .param p0, "req"    # Lcom/google/gdata/client/Service$GDataRequest;

    .prologue
    .line 2188
    invoke-interface {p0}, Lcom/google/gdata/client/Service$GDataRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 2189
    .local v0, "query":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2190
    sget-object v1, Lcom/google/gdata/util/common/net/UriParameterMap;->EMPTY_MAP:Lcom/google/gdata/util/common/net/UriParameterMap;

    .line 2192
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/gdata/util/common/net/UriParameterMap;->parse(Ljava/lang/String;)Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 546
    sget-object v0, Lcom/google/gdata/client/Service;->BASE_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    return-object v0
.end method

.method private getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "request"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Service$GDataRequest;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
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
    .line 1099
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1100
    invoke-interface {p1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setIfModifiedSince(Lcom/google/gdata/data/DateTime;)V

    .line 1101
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1102
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1105
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1104
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1105
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method private getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "request"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Service$GDataRequest;",
            "Ljava/lang/Class",
            "<TF;>;",
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
    .line 1133
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1134
    invoke-interface {p1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1135
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1136
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1139
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v0

    .line 1138
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1139
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v0
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 486
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/Service;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method private static initProtocolVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;)",
            "Lcom/google/gdata/util/Version;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    move-object v0, p0

    .line 498
    .local v0, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v2

    .line 499
    .local v2, "registry":Lcom/google/gdata/util/VersionRegistry;
    :goto_0
    const-class v3, Lcom/google/gdata/client/Service;

    if-eq v0, v3, :cond_0

    .line 501
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 511
    :goto_1
    return-object v3

    .line 502
    :catch_0
    move-exception v1

    .line 503
    .local v1, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 504
    goto :goto_0

    .line 509
    .end local v1    # "ise":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 510
    :catch_1
    move-exception v1

    .line 511
    .restart local v1    # "ise":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/google/gdata/client/Service;->CORE_VERSION:Lcom/google/gdata/util/Version;

    goto :goto_1
.end method

.method protected static initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;
    .locals 4
    .param p1, "defaultVersion"    # Lcom/google/gdata/util/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/client/Service;",
            ">;",
            "Lcom/google/gdata/util/Version;",
            ")",
            "Lcom/google/gdata/util/Version;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/client/Service;>;"
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->ensureRegistry()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v2

    .line 459
    .local v2, "versionRegistry":Lcom/google/gdata/util/VersionRegistry;
    const/4 v1, 0x0

    .line 462
    .local v1, "v":Lcom/google/gdata/util/Version;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 477
    :goto_0
    return-object v1

    .line 463
    :catch_0
    move-exception v0

    .line 466
    .local v0, "ise":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-static {p0}, Lcom/google/gdata/util/VersionRegistry;->getVersionFromProperty(Ljava/lang/Class;)Lcom/google/gdata/util/Version;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 470
    :goto_1
    if-nez v1, :cond_0

    .line 471
    move-object v1, p1

    .line 475
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/gdata/util/VersionRegistry;->addDefaultVersion(Lcom/google/gdata/util/Version;Z)V

    goto :goto_0

    .line 467
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .param p1, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "inputProperties"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 2126
    .local p3, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const-string v7, "resultType"

    invoke-static {v7, p3}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    const/4 v3, 0x0

    .line 2129
    .local v3, "inputFormat":Lcom/google/gdata/wireformats/AltFormat;
    const-string v7, "alt"

    invoke-interface {p2, v7}, Lcom/google/gdata/wireformats/input/InputProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2130
    .local v0, "alt":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2131
    iget-object v7, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v7, v0}, Lcom/google/gdata/wireformats/AltRegistry;->lookupName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v3

    .line 2133
    :cond_0
    if-nez v3, :cond_1

    .line 2134
    iget-object v7, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gdata/wireformats/AltRegistry;->lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v3

    .line 2135
    if-nez v3, :cond_1

    .line 2136
    new-instance v7, Lcom/google/gdata/util/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized content type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2140
    :cond_1
    iget-object v7, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v7, v3}, Lcom/google/gdata/wireformats/AltRegistry;->getParser(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/input/InputParser;

    move-result-object v4

    .line 2141
    .local v4, "inputParser":Lcom/google/gdata/wireformats/input/InputParser;, "Lcom/google/gdata/wireformats/input/InputParser<*>;"
    if-nez v4, :cond_2

    .line 2142
    new-instance v7, Lcom/google/gdata/util/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No parser for content type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2145
    :cond_2
    invoke-interface {v4}, Lcom/google/gdata/wireformats/input/InputParser;->getResultType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2146
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input parser ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") does not produce expected result type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2152
    :cond_3
    move-object v6, v4

    .line 2155
    .local v6, "typedParser":Lcom/google/gdata/wireformats/input/InputParser;, "Lcom/google/gdata/wireformats/input/InputParser<TE;>;"
    const-string v7, "fields"

    invoke-interface {p2, v7}, Lcom/google/gdata/wireformats/input/InputProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2157
    .local v2, "fields":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    if-eqz v7, :cond_4

    if-eqz v2, :cond_8

    const-class v7, Lcom/google/gdata/model/Element;

    invoke-virtual {v7, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_4
    const/4 v1, 0x1

    .line 2159
    .local v1, "disableValidation":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 2160
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->disableStrictValidation()V

    .line 2165
    :cond_5
    :try_start_0
    invoke-interface {v6, p1, p2, p3}, Lcom/google/gdata/wireformats/input/InputParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 2168
    .local v5, "result":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_6

    .line 2169
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    .line 2174
    :cond_6
    instance-of v7, v5, Lcom/google/gdata/data/IAtom;

    if-eqz v7, :cond_7

    move-object v7, v5

    .line 2175
    check-cast v7, Lcom/google/gdata/data/IAtom;

    invoke-interface {v7, p0}, Lcom/google/gdata/data/IAtom;->setService(Lcom/google/gdata/client/Service;)V

    .line 2177
    :cond_7
    return-object v5

    .line 2157
    .end local v1    # "disableValidation":Z
    .end local v5    # "result":Ljava/lang/Object;, "TE;"
    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 2168
    .restart local v1    # "disableValidation":Z
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_9

    .line 2169
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    :cond_9
    throw v7
.end method


# virtual methods
.method public batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;
    .locals 4
    .param p1, "feedUrl"    # Ljava/net/URL;
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
    .line 1450
    .local p2, "inputFeed":Lcom/google/gdata/data/IFeed;, "TF;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1452
    .local v1, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1453
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1454
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1455
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IFeed;

    .line 1458
    .local v2, "resultFeed":Lcom/google/gdata/data/IFeed;, "TF;"
    invoke-interface {v2}, Lcom/google/gdata/data/IFeed;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1459
    .local v0, "count":I
    invoke-static {v2}, Lcom/google/gdata/model/batch/BatchUtils;->throwIfInterrupted(Lcom/google/gdata/data/IFeed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1464
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v2

    .line 1463
    .end local v0    # "count":I
    .end local v2    # "resultFeed":Lcom/google/gdata/data/IFeed;, "TF;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1464
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v3
.end method

.method protected classOf(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public createBatchRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1502
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->BATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createDeleteRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1779
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->DELETE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createEntryRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1375
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createFeedRequest(Lcom/google/gdata/client/Query;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1156
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1483
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createLinkQueryRequest(Lcom/google/gdata/data/ILink;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 3
    .param p1, "link"    # Lcom/google/gdata/data/ILink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1819
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Lcom/google/gdata/data/ILink;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createPatchRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1686
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->PATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    sget-object v1, Lcom/google/gdata/util/ContentType;->APPLICATION_XML:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method protected createRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p2, "inputType"    # Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v1, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    invoke-interface {v1, p1, p2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->getRequest(Lcom/google/gdata/client/Query;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 777
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/Service;->setTimeouts(Lcom/google/gdata/client/Service$GDataRequest;)V

    .line 778
    return-object v0
.end method

.method public createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "type"    # Lcom/google/gdata/client/Service$GDataRequest$RequestType;
    .param p2, "requestUrl"    # Ljava/net/URL;
    .param p3, "inputType"    # Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 760
    iget-object v1, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/gdata/client/Service$GDataRequestFactory;->getRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 762
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/Service;->setTimeouts(Lcom/google/gdata/client/Service$GDataRequest;)V

    .line 763
    return-object v0
.end method

.method public createUpdateRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1588
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    iget-object v1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/gdata/client/Service;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;)V
    .locals 2
    .param p1, "resourceUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1713
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method public delete(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceUri"    # Ljava/net/URI;
    .param p2, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1761
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    .line 1762
    return-void
.end method

.method public delete(Ljava/net/URL;)V
    .locals 1
    .param p1, "resourceUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1700
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/Service;->delete(Ljava/net/URL;Ljava/lang/String;)V

    .line 1701
    return-void
.end method

.method public delete(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceUrl"    # Ljava/net/URL;
    .param p2, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1734
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createDeleteRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1736
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1737
    invoke-interface {v0, p2}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1738
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    .line 1742
    return-void

    .line 1740
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v1
.end method

.method protected endVersionScope()V
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/VersionRegistry;->resetThreadVersion()V

    .line 614
    return-void
.end method

.method public getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    return-object v0
.end method

.method public getContentType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1278
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1307
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    .line 1308
    .local v0, "entrySource":Lcom/google/gdata/data/ParseSource;
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createEntryRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1310
    .local v1, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1311
    invoke-interface {v1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setIfModifiedSince(Lcom/google/gdata/data/DateTime;)V

    .line 1312
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1313
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1317
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v2

    .line 1316
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1317
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v2
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1347
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    .line 1348
    .local v0, "entrySource":Lcom/google/gdata/data/ParseSource;
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createEntryRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 1350
    .local v1, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1351
    invoke-interface {v1, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1352
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1353
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1357
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v2

    .line 1356
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1357
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v2
.end method

.method public getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    return-object v0
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1034
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
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
    .line 1053
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Lcom/google/gdata/client/Query;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1054
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
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
    .line 1076
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Lcom/google/gdata/client/Query;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1077
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1017
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
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
    .line 971
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 972
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    return-object v1
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;",
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
    .line 997
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 998
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-direct {p0, v0, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    return-object v1
.end method

.method public getMetadataRegistry()Lcom/google/gdata/model/MetadataRegistry;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    return-object v0
.end method

.method public getProtocolVersion()Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    return-object v0
.end method

.method public getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    return-object v0
.end method

.method public getSchema()Lcom/google/gdata/model/Schema;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/gdata/client/Service;->metadataRegistry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->createSchema()Lcom/google/gdata/model/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/google/gdata/client/Service;->SERVICE_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamFromLink(Lcom/google/gdata/data/ILink;)Ljava/io/InputStream;
    .locals 2
    .param p1, "link"    # Lcom/google/gdata/data/ILink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1796
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createLinkQueryRequest(Lcom/google/gdata/data/ILink;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1798
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1799
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1801
    .local v1, "resultStream":Ljava/io/InputStream;
    return-object v1
.end method

.method public getStrictValidation()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    return v0
.end method

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "feedUrl"    # Ljava/net/URL;
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
    .line 1400
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    if-nez p2, :cond_0

    .line 1401
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Must supply entry"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1404
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1406
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1408
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1409
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1410
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1414
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v1

    .line 1413
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1414
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v1
.end method

.method public introspect(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/introspection/IServiceDocument;
    .locals 7
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/gdata/data/introspection/IServiceDocument;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 929
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "feedQuery":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/gdata/wireformats/AltFormat;->ATOM_SERVICE:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v6}, Lcom/google/gdata/wireformats/AltFormat;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "altParam":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 933
    :cond_0
    if-nez v2, :cond_2

    const/16 v1, 0x3f

    .line 934
    .local v1, "appendChar":C
    :goto_0
    new-instance v3, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local p1    # "feedUrl":Ljava/net/URL;
    .local v3, "feedUrl":Ljava/net/URL;
    move-object p1, v3

    .line 937
    .end local v1    # "appendChar":C
    .end local v3    # "feedUrl":Ljava/net/URL;
    .restart local p1    # "feedUrl":Ljava/net/URL;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createFeedRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v4

    .line 939
    .local v4, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 940
    invoke-interface {v4}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 941
    invoke-virtual {p0, v4, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/data/introspection/IServiceDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 944
    invoke-interface {v4}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v5

    .line 933
    .end local v4    # "request":Lcom/google/gdata/client/Service$GDataRequest;
    :cond_2
    const/16 v1, 0x26

    goto :goto_0

    .line 943
    .restart local v4    # "request":Lcom/google/gdata/client/Service$GDataRequest;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 944
    invoke-interface {v4}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v5
.end method

.method public parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "req"    # Lcom/google/gdata/client/Service$GDataRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/client/Service$GDataRequest;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 2096
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/gdata/client/Service$ClientInputProperties;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/client/Service$ClientInputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)V

    .line 2098
    .local v0, "inputProperties":Lcom/google/gdata/wireformats/input/InputProperties;
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->getParseSource()Lcom/google/gdata/data/ParseSource;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "responseType"    # Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/util/ContentType;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 2118
    .local p3, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/gdata/client/Service$ClientInputProperties;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/gdata/client/Service$ClientInputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)V

    .line 2120
    .local v0, "inputProperties":Lcom/google/gdata/wireformats/input/InputProperties;
    invoke-direct {p0, p1, v0, p3}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public patch(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p2, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
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
    .line 1616
    .local p3, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    const/4 v0, 0x0

    .line 1617
    .local v0, "etag":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1618
    invoke-interface {p3}, Lcom/google/gdata/data/IEntry;->getEtag()Ljava/lang/String;

    move-result-object v0

    .line 1619
    invoke-static {v0}, Lcom/google/gdata/client/GDataProtocol;->isWeakEtag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    const/4 v0, 0x0

    .line 1623
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/gdata/client/Service;->patch(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    return-object v1
.end method

.method public patch(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p2, "fields"    # Ljava/lang/String;
    .param p4, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1656
    .local p3, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createPatchRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1658
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1659
    invoke-interface {v0, p4}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1660
    invoke-interface {p3, p2}, Lcom/google/gdata/data/IEntry;->setSelectedFields(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p0, v0, p3}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1662
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1663
    invoke-virtual {p0, p3}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1666
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v1

    .line 1665
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1666
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v1
.end method

.method public query(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1178
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
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
    .line 1208
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;",
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
    .line 1237
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/client/Service;->getFeed(Lcom/google/gdata/client/Query;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "acceptedLanguages"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    const-string v1, "Accept-Language"

    invoke-interface {v0, v1, p1}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)V
    .locals 0
    .param p1, "altRegistry"    # Lcom/google/gdata/wireformats/AltRegistry;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    .line 883
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 836
    if-gez p1, :cond_0

    .line 837
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    .line 840
    return-void
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)V
    .locals 0
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/google/gdata/client/Service;->contentType:Lcom/google/gdata/util/ContentType;

    .line 815
    return-void
.end method

.method public setExtensionProfile(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/google/gdata/client/Service;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 639
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public setOAuthProxyHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 712
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/client/Service;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setPrivateHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public setProtocolVersion(Lcom/google/gdata/util/Version;)V
    .locals 3
    .param p1, "v"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    invoke-virtual {v0}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service class, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    invoke-virtual {v2}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    .line 606
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 861
    if-gez p1, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    .line 865
    return-void
.end method

.method public setRequestFactory(Lcom/google/gdata/client/Service$GDataRequestFactory;)V
    .locals 0
    .param p1, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    .line 678
    return-void
.end method

.method public setStrictValidation(Z)V
    .locals 0
    .param p1, "strictValidation"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    .line 902
    return-void
.end method

.method public setTimeouts(Lcom/google/gdata/client/Service$GDataRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/google/gdata/client/Service$GDataRequest;

    .prologue
    .line 786
    iget v0, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    if-ltz v0, :cond_0

    .line 787
    iget v0, p0, Lcom/google/gdata/client/Service;->connectTimeout:I

    invoke-interface {p1, v0}, Lcom/google/gdata/client/Service$GDataRequest;->setConnectTimeout(I)V

    .line 789
    :cond_0
    iget v0, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    if-ltz v0, :cond_1

    .line 790
    iget v0, p0, Lcom/google/gdata/client/Service;->readTimeout:I

    invoke-interface {p1, v0}, Lcom/google/gdata/client/Service$GDataRequest;->setReadTimeout(I)V

    .line 792
    :cond_1
    return-void
.end method

.method protected startVersionScope()V
    .locals 2

    .prologue
    .line 609
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/client/Service;->protocolVersion:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->setThreadVersion(Lcom/google/gdata/util/Version;)V

    .line 610
    return-void
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
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
    .line 1526
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    invoke-interface {p2}, Lcom/google/gdata/data/IEntry;->getEtag()Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, "etag":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/gdata/client/GDataProtocol;->isWeakEtag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1528
    const/4 v0, 0x0

    .line 1530
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/client/Service;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Ljava/lang/String;)Lcom/google/gdata/data/IEntry;
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p3, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 1558
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Service;->createUpdateRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 1560
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->startVersionScope()V

    .line 1561
    invoke-interface {v0, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 1563
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 1564
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/Service;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/Service;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1567
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v1

    .line 1566
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/gdata/client/Service;->endVersionScope()V

    .line 1567
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v1
.end method

.method public useSsl()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    instance-of v0, v0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a http transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/Service;->requestFactory:Lcom/google/gdata/client/Service$GDataRequestFactory;

    check-cast v0, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;

    invoke-virtual {v0}, Lcom/google/gdata/client/http/HttpGDataRequest$Factory;->useSsl()V

    .line 725
    return-void
.end method

.method protected writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/client/Service$ClientOutputProperties;Ljava/lang/Object;)V
    .locals 7
    .param p1, "req"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p2, "outProps"    # Lcom/google/gdata/client/Service$ClientOutputProperties;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2043
    iget-object v4, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gdata/wireformats/AltRegistry;->lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v2

    .line 2044
    .local v2, "outputFormat":Lcom/google/gdata/wireformats/AltFormat;
    if-nez v2, :cond_0

    .line 2046
    iget-object v4, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v5, Lcom/google/gdata/wireformats/AltFormat;->MEDIA:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v5}, Lcom/google/gdata/wireformats/AltFormat;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gdata/wireformats/AltRegistry;->lookupName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v2

    .line 2048
    :cond_0
    if-nez v2, :cond_1

    .line 2049
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported request type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2052
    :cond_1
    iget-object v4, p0, Lcom/google/gdata/client/Service;->altRegistry:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v4, v2}, Lcom/google/gdata/wireformats/AltRegistry;->getGenerator(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/output/OutputGenerator;

    move-result-object v1

    .line 2053
    .local v1, "generator":Lcom/google/gdata/wireformats/output/OutputGenerator;, "Lcom/google/gdata/wireformats/output/OutputGenerator<*>;"
    invoke-interface {v1}, Lcom/google/gdata/wireformats/output/OutputGenerator;->getSourceType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2054
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid source type: expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/gdata/wireformats/output/OutputGenerator;->getSourceType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for output format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2061
    :cond_2
    move-object v3, v1

    .line 2065
    .local v3, "typedGenerator":Lcom/google/gdata/wireformats/output/OutputGenerator;, "Lcom/google/gdata/wireformats/output/OutputGenerator<Ljava/lang/Object;>;"
    iget-boolean v4, p0, Lcom/google/gdata/client/Service;->strictValidation:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/google/gdata/wireformats/AltFormat;->APPLICATION_XML:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v2, v4}, Lcom/google/gdata/wireformats/AltFormat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 2067
    .local v0, "disableValidation":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 2068
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->disableStrictValidation()V

    .line 2071
    :cond_4
    :try_start_0
    invoke-interface {p1}, Lcom/google/gdata/client/Service$GDataRequest;->getRequestStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Lcom/google/gdata/wireformats/output/OutputGenerator;->generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    if-eqz v0, :cond_5

    .line 2075
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    .line 2079
    :cond_5
    return-void

    .line 2065
    .end local v0    # "disableValidation":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 2074
    .restart local v0    # "disableValidation":Z
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_7

    .line 2075
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->enableStrictValidation()V

    :cond_7
    throw v4
.end method

.method public writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V
    .locals 1
    .param p1, "req"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2029
    new-instance v0, Lcom/google/gdata/client/Service$ClientOutputProperties;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gdata/client/Service;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/client/Service$ClientOutputProperties;Ljava/lang/Object;)V

    .line 2030
    return-void
.end method
