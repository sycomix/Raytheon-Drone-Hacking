.class public Lcom/google/gdata/client/media/MediaService;
.super Lcom/google/gdata/client/GoogleService;
.source "MediaService.java"


# static fields
.field public static final DEFAULT_CHUNKED_BUFFER_SIZE:I = 0x0

.field private static final MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

.field public static final NO_CHUNKED_MEDIA_REQUEST:I = -0x1

.field private static final SLUG_ESCAPER:Lcom/google/gdata/util/common/base/PercentEscaper;


# instance fields
.field private chunkedBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcom/google/gdata/wireformats/AltRegistry;

    invoke-static {}, Lcom/google/gdata/client/Service;->getDefaultAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/wireformats/AltRegistry;-><init>(Lcom/google/gdata/wireformats/AltRegistry;)V

    sput-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    .line 106
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->MEDIA:Lcom/google/gdata/wireformats/AltFormat;

    new-instance v2, Lcom/google/gdata/wireformats/input/media/MediaParser;

    invoke-direct {v2}, Lcom/google/gdata/wireformats/input/media/MediaParser;-><init>()V

    new-instance v3, Lcom/google/gdata/wireformats/output/media/MediaGenerator;

    invoke-direct {v3}, Lcom/google/gdata/wireformats/output/media/MediaGenerator;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 108
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    sget-object v1, Lcom/google/gdata/wireformats/AltFormat;->MEDIA_MULTIPART:Lcom/google/gdata/wireformats/AltFormat;

    new-instance v2, Lcom/google/gdata/wireformats/input/media/MediaMultipartParser;

    invoke-direct {v2}, Lcom/google/gdata/wireformats/input/media/MediaMultipartParser;-><init>()V

    new-instance v3, Lcom/google/gdata/wireformats/output/media/MediaMultipartGenerator;

    invoke-direct {v3}, Lcom/google/gdata/wireformats/output/media/MediaMultipartGenerator;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/wireformats/AltRegistry;->register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    .line 112
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/AltRegistry;->lock()V

    .line 331
    new-instance v0, Lcom/google/gdata/util/common/base/PercentEscaper;

    const-string v1, " !\"#$&\'()*+,-./:;<=>?@[\\]^_`{|}~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/gdata/client/media/MediaService;->SLUG_ESCAPER:Lcom/google/gdata/util/common/base/PercentEscaper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gdata/client/media/MediaService;->chunkedBufferSize:I

    .line 158
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/media/MediaService;->setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gdata/client/media/MediaService;->chunkedBufferSize:I

    .line 135
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/media/MediaService;->setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "domainName"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gdata/client/media/MediaService;->chunkedBufferSize:I

    .line 186
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/media/MediaService;->setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)V

    .line 187
    return-void
.end method

.method static escapeSlug(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "slug"    # Ljava/lang/String;

    .prologue
    .line 339
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->SLUG_ESCAPER:Lcom/google/gdata/util/common/base/PercentEscaper;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/gdata/client/media/MediaService;->MEDIA_REGISTRY:Lcom/google/gdata/wireformats/AltRegistry;

    return-object v0
.end method

.method private getMediaResource(Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/media/MediaSource;
    .locals 6
    .param p1, "mediaUrl"    # Ljava/net/URL;
    .param p2, "contentType"    # Lcom/google/gdata/util/ContentType;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 229
    sget-object v5, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    invoke-virtual {p0, v5, p1, p2}, Lcom/google/gdata/client/media/MediaService;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v3

    .line 232
    .local v3, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-interface {v3, p3}, Lcom/google/gdata/client/Service$GDataRequest;->setIfModifiedSince(Lcom/google/gdata/data/DateTime;)V

    .line 233
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 234
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseStream()Ljava/io/InputStream;

    move-result-object v4

    .line 236
    .local v4, "resultStream":Ljava/io/InputStream;
    new-instance v2, Lcom/google/gdata/data/media/MediaStreamSource;

    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/gdata/data/media/MediaStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 239
    .local v2, "mediaSource":Lcom/google/gdata/data/media/MediaStreamSource;
    const-string v5, "Last-Modified"

    invoke-interface {v3, v5}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseDateHeader(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v1

    .line 241
    .local v1, "lastModified":Lcom/google/gdata/data/DateTime;
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v2, v1}, Lcom/google/gdata/data/media/MediaStreamSource;->setLastModified(Lcom/google/gdata/data/DateTime;)V

    .line 244
    :cond_0
    const-string v5, "ETag"

    invoke-interface {v3, v5}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "etag":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v2, v0}, Lcom/google/gdata/data/media/MediaStreamSource;->setEtag(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 252
    return-object v2

    .line 249
    .end local v0    # "etag":Ljava/lang/String;
    .end local v1    # "lastModified":Lcom/google/gdata/data/DateTime;
    .end local v2    # "mediaSource":Lcom/google/gdata/data/media/MediaStreamSource;
    .end local v3    # "request":Lcom/google/gdata/client/Service$GDataRequest;
    .end local v4    # "resultStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    throw v5
.end method

.method private initMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/data/media/MediaSource;)V
    .locals 1
    .param p1, "request"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p2, "media"    # Lcom/google/gdata/data/media/MediaSource;

    .prologue
    .line 322
    invoke-interface {p2}, Lcom/google/gdata/data/media/MediaSource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/client/media/MediaService;->initMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private initMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 308
    if-eqz p2, :cond_0

    .line 309
    const-string v1, "Slug"

    invoke-static {p2}, Lcom/google/gdata/client/media/MediaService;->escapeSlug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/gdata/client/Service$GDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    iget v1, p0, Lcom/google/gdata/client/media/MediaService;->chunkedBufferSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    instance-of v1, p1, Lcom/google/gdata/client/http/HttpGDataRequest;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 313
    check-cast v0, Lcom/google/gdata/client/http/HttpGDataRequest;

    .line 314
    .local v0, "httpRequest":Lcom/google/gdata/client/http/HttpGDataRequest;
    invoke-virtual {v0}, Lcom/google/gdata/client/http/HttpGDataRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    iget v2, p0, Lcom/google/gdata/client/media/MediaService;->chunkedBufferSize:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 316
    .end local v0    # "httpRequest":Lcom/google/gdata/client/http/HttpGDataRequest;
    :cond_1
    return-void
.end method

.method private initResumableMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/data/media/MediaFileSource;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lcom/google/gdata/client/Service$GDataRequest;
    .param p2, "file"    # Lcom/google/gdata/data/media/MediaFileSource;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-direct {p0, p1, p3}, Lcom/google/gdata/client/media/MediaService;->initMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/String;)V

    .line 602
    const-string v0, "X-Upload-Content-Type"

    invoke-virtual {p2}, Lcom/google/gdata/data/media/MediaFileSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/gdata/client/Service$GDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "X-Upload-Content-Length"

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/google/gdata/data/media/MediaFileSource;->getContentLength()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/gdata/client/Service$GDataRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method


# virtual methods
.method createResumableUpdateSession(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaFileSource;Z)Ljava/net/URL;
    .locals 4
    .param p1, "editMediaUrl"    # Ljava/net/URL;
    .param p2, "entry"    # Lcom/google/gdata/data/IEntry;
    .param p3, "file"    # Lcom/google/gdata/data/media/MediaFileSource;
    .param p4, "isMediaOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 683
    if-eqz p4, :cond_2

    .line 684
    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v2, Lcom/google/gdata/util/ContentType;

    invoke-virtual {p3}, Lcom/google/gdata/data/media/MediaFileSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v2}, Lcom/google/gdata/client/media/MediaService;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 689
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/google/gdata/client/media/MediaService;->initResumableMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/data/media/MediaFileSource;Ljava/lang/String;)V

    .line 690
    invoke-interface {p2}, Lcom/google/gdata/data/IEntry;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 691
    invoke-interface {p2}, Lcom/google/gdata/data/IEntry;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gdata/client/Service$GDataRequest;->setEtag(Ljava/lang/String;)V

    .line 694
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 695
    if-nez p4, :cond_1

    .line 696
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/media/MediaService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 698
    :cond_1
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 699
    new-instance v1, Ljava/net/URL;

    const-string v2, "Location"

    invoke-interface {v0, v2}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 702
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v1

    .line 687
    .end local v0    # "request":Lcom/google/gdata/client/Service$GDataRequest;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/media/MediaService;->createUpdateRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .restart local v0    # "request":Lcom/google/gdata/client/Service$GDataRequest;
    goto :goto_0

    .line 701
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 702
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v1
.end method

.method createResumableUploadSession(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaFileSource;)Ljava/net/URL;
    .locals 3
    .param p1, "createMediaUrl"    # Ljava/net/URL;
    .param p2, "entry"    # Lcom/google/gdata/data/IEntry;
    .param p3, "file"    # Lcom/google/gdata/data/media/MediaFileSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/media/MediaService;->createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 652
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-virtual {p3}, Lcom/google/gdata/data/media/MediaFileSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Lcom/google/gdata/client/media/MediaService;->initResumableMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/data/media/MediaFileSource;Ljava/lang/String;)V

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 656
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/media/MediaService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 657
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 658
    new-instance v1, Ljava/net/URL;

    const-string v2, "Location"

    invoke-interface {v0, v2}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 661
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v1

    .line 660
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 661
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v1
.end method

.method createResumableUploadSession(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/media/MediaFileSource;)Ljava/net/URL;
    .locals 4
    .param p1, "createMediaUrl"    # Ljava/net/URL;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/google/gdata/data/media/MediaFileSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p3}, Lcom/google/gdata/data/media/MediaFileSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "mimeType":Ljava/lang/String;
    sget-object v2, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v3, Lcom/google/gdata/util/ContentType;

    invoke-direct {v3, v0}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1, v3}, Lcom/google/gdata/client/media/MediaService;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 626
    .local v1, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-direct {p0, v1, p3, p2}, Lcom/google/gdata/client/media/MediaService;->initResumableMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/data/media/MediaFileSource;Ljava/lang/String;)V

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 629
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 630
    new-instance v2, Ljava/net/URL;

    const-string v3, "Location"

    invoke-interface {v1, v3}, Lcom/google/gdata/client/Service$GDataRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 633
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v2

    .line 632
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 633
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v2
.end method

.method public getMedia(Lcom/google/gdata/data/media/IMediaContent;)Lcom/google/gdata/data/media/MediaSource;
    .locals 1
    .param p1, "mediaContent"    # Lcom/google/gdata/data/media/IMediaContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/media/MediaService;->getMedia(Lcom/google/gdata/data/media/IMediaContent;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/media/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method public getMedia(Lcom/google/gdata/data/media/IMediaContent;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/media/MediaSource;
    .locals 6
    .param p1, "mediaContent"    # Lcom/google/gdata/data/media/IMediaContent;
    .param p2, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "mediaUrl":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-interface {p1}, Lcom/google/gdata/data/media/IMediaContent;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_0 .. :try_end_0} :catch_2

    .line 275
    .end local v1    # "mediaUrl":Ljava/net/URL;
    .local v2, "mediaUrl":Ljava/net/URL;
    :try_start_1
    invoke-interface {p1}, Lcom/google/gdata/data/media/IMediaContent;->getMimeType()Lcom/google/gdata/util/ContentType;

    move-result-object v4

    invoke-direct {p0, v2, v4, p2}, Lcom/google/gdata/client/media/MediaService;->getMediaResource(Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/media/MediaSource;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/gdata/util/RedirectRequiredException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/gdata/client/GoogleService$SessionExpiredException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    move-object v1, v2

    .line 285
    .end local v2    # "mediaUrl":Ljava/net/URL;
    .restart local v1    # "mediaUrl":Ljava/net/URL;
    :goto_0
    return-object v4

    .line 277
    :catch_0
    move-exception v3

    .line 278
    .local v3, "mue":Ljava/net/MalformedURLException;
    :goto_1
    new-instance v4, Lcom/google/gdata/util/ServiceException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->invalidMediaSourceUri:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v4, v5, v3}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v4

    .line 280
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/media/MediaService;->handleRedirectException(Lcom/google/gdata/util/RedirectRequiredException;)Ljava/net/URL;

    move-result-object v1

    .line 285
    .end local v0    # "e":Lcom/google/gdata/util/RedirectRequiredException;
    :goto_3
    invoke-interface {p1}, Lcom/google/gdata/data/media/IMediaContent;->getMimeType()Lcom/google/gdata/util/ContentType;

    move-result-object v4

    invoke-direct {p0, v1, v4, p2}, Lcom/google/gdata/client/media/MediaService;->getMediaResource(Ljava/net/URL;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/media/MediaSource;

    move-result-object v4

    goto :goto_0

    .line 282
    :catch_2
    move-exception v0

    .line 283
    .local v0, "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/gdata/client/media/MediaService;->handleSessionExpiredException(Lcom/google/gdata/client/GoogleService$SessionExpiredException;)V

    goto :goto_3

    .line 282
    .end local v0    # "e":Lcom/google/gdata/client/GoogleService$SessionExpiredException;
    .end local v1    # "mediaUrl":Ljava/net/URL;
    .restart local v2    # "mediaUrl":Ljava/net/URL;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "mediaUrl":Ljava/net/URL;
    .restart local v1    # "mediaUrl":Ljava/net/URL;
    goto :goto_4

    .line 280
    .end local v1    # "mediaUrl":Ljava/net/URL;
    .restart local v2    # "mediaUrl":Ljava/net/URL;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "mediaUrl":Ljava/net/URL;
    .restart local v1    # "mediaUrl":Ljava/net/URL;
    goto :goto_2

    .line 277
    .end local v1    # "mediaUrl":Ljava/net/URL;
    .restart local v2    # "mediaUrl":Ljava/net/URL;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "mediaUrl":Ljava/net/URL;
    .restart local v1    # "mediaUrl":Ljava/net/URL;
    goto :goto_1
.end method

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 7
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
    .line 374
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    const-string v4, "entry"

    invoke-static {p2, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    instance-of v4, p2, Lcom/google/gdata/data/media/IMediaEntry;

    if-eqz v4, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/google/gdata/data/media/IMediaEntry;

    invoke-interface {v4}, Lcom/google/gdata/data/media/IMediaEntry;->getMediaSource()Lcom/google/gdata/data/media/MediaSource;

    move-result-object v1

    .line 379
    .local v1, "media":Lcom/google/gdata/data/media/MediaSource;
    :goto_0
    if-nez v1, :cond_2

    .line 380
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v4

    .line 408
    :cond_0
    :goto_1
    return-object v4

    .line 377
    .end local v1    # "media":Lcom/google/gdata/data/media/MediaSource;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 383
    .restart local v1    # "media":Lcom/google/gdata/data/media/MediaSource;
    :cond_2
    const/4 v3, 0x0

    .line 385
    .local v3, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 390
    new-instance v2, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-direct {v2, p2, v1}, Lcom/google/gdata/data/media/MediaMultipart;-><init>(Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaSource;)V

    .line 391
    .local v2, "mediaMultipart":Lcom/google/gdata/data/media/MediaMultipart;
    sget-object v4, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v5, Lcom/google/gdata/util/ContentType;

    invoke-virtual {v2}, Lcom/google/gdata/data/media/MediaMultipart;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, p1, v5}, Lcom/google/gdata/client/media/MediaService;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v3

    .line 395
    invoke-direct {p0, v3, v1}, Lcom/google/gdata/client/media/MediaService;->initMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/data/media/MediaSource;)V

    .line 397
    new-instance v4, Lcom/google/gdata/client/Service$ClientOutputProperties;

    invoke-direct {v4, p0, v3, p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/gdata/client/media/MediaService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/client/Service$ClientOutputProperties;Ljava/lang/Object;)V

    .line 399
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 400
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/media/MediaService;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/media/MediaService;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 407
    if-eqz v3, :cond_0

    .line 408
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    goto :goto_1

    .line 402
    .end local v2    # "mediaMultipart":Lcom/google/gdata/data/media/MediaMultipart;
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljavax/mail/MessagingException;
    :try_start_1
    new-instance v4, Lcom/google/gdata/util/ServiceException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->cantWriteMimeMultipart:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v4, v5, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    .end local v0    # "e":Ljavax/mail/MessagingException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 407
    if-eqz v3, :cond_3

    .line 408
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    :cond_3
    throw v4
.end method

.method public insert(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/media/MediaSource;)Lcom/google/gdata/data/IEntry;
    .locals 4
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p3, "media"    # Lcom/google/gdata/data/media/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/media/MediaSource;",
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
    .line 443
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const-string v1, "media"

    invoke-static {p3, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v2, Lcom/google/gdata/util/ContentType;

    invoke-interface {p3}, Lcom/google/gdata/data/media/MediaSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v2}, Lcom/google/gdata/client/media/MediaService;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 450
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 452
    invoke-direct {p0, v0, p3}, Lcom/google/gdata/client/media/MediaService;->initMediaRequest(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/data/media/MediaSource;)V

    .line 453
    invoke-virtual {p0, v0, p3}, Lcom/google/gdata/client/media/MediaService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 454
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 455
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/media/MediaService;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 459
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v1

    .line 458
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 459
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v1
.end method

.method parseResumableUploadResponse(Ljava/io/InputStream;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "responseType"    # Lcom/google/gdata/util/ContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
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
    .line 720
    .local p3, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 721
    new-instance v0, Lcom/google/gdata/data/ParseSource;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/ParseSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/gdata/client/media/MediaService;->parseResponseData(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 724
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    throw v0
.end method

.method public setChunkedMediaUpload(I)V
    .locals 0
    .param p1, "chunkSizeInBytes"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/google/gdata/client/media/MediaService;->chunkedBufferSize:I

    .line 207
    return-void
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
    .line 483
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public updateMedia(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 7
    .param p1, "mediaUrl"    # Ljava/net/URL;
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
    .line 506
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    const-string v4, "entry"

    invoke-static {p2, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    instance-of v4, p2, Lcom/google/gdata/data/media/IMediaEntry;

    if-eqz v4, :cond_0

    move-object v4, p2

    check-cast v4, Lcom/google/gdata/data/media/IMediaEntry;

    invoke-interface {v4}, Lcom/google/gdata/data/media/IMediaEntry;->getMediaSource()Lcom/google/gdata/data/media/MediaSource;

    move-result-object v1

    .line 513
    .local v1, "media":Lcom/google/gdata/data/media/MediaSource;
    :goto_0
    if-nez v1, :cond_1

    .line 514
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply media entry with a media source"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 511
    .end local v1    # "media":Lcom/google/gdata/data/media/MediaSource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 518
    .restart local v1    # "media":Lcom/google/gdata/data/media/MediaSource;
    :cond_1
    const/4 v3, 0x0

    .line 520
    .local v3, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 525
    new-instance v2, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-direct {v2, p2, v1}, Lcom/google/gdata/data/media/MediaMultipart;-><init>(Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaSource;)V

    .line 526
    .local v2, "mediaMultipart":Lcom/google/gdata/data/media/MediaMultipart;
    sget-object v4, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v5, Lcom/google/gdata/util/ContentType;

    invoke-virtual {v2}, Lcom/google/gdata/data/media/MediaMultipart;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, p1, v5}, Lcom/google/gdata/client/media/MediaService;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v3

    .line 529
    new-instance v4, Lcom/google/gdata/client/Service$ClientOutputProperties;

    invoke-direct {v4, p0, v3, p2}, Lcom/google/gdata/client/Service$ClientOutputProperties;-><init>(Lcom/google/gdata/client/Service;Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/gdata/client/media/MediaService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Lcom/google/gdata/client/Service$ClientOutputProperties;Ljava/lang/Object;)V

    .line 531
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 532
    invoke-virtual {p0, p2}, Lcom/google/gdata/client/media/MediaService;->classOf(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/media/MediaService;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 539
    if-eqz v3, :cond_2

    .line 540
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    :cond_2
    return-object v4

    .line 534
    .end local v2    # "mediaMultipart":Lcom/google/gdata/data/media/MediaMultipart;
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljavax/mail/MessagingException;
    :try_start_1
    new-instance v4, Lcom/google/gdata/util/ServiceException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->cantWriteMimeMultipart:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v4, v5, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    .end local v0    # "e":Ljavax/mail/MessagingException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 539
    if-eqz v3, :cond_3

    .line 540
    invoke-interface {v3}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    :cond_3
    throw v4
.end method

.method public updateMedia(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/media/MediaSource;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "mediaUrl"    # Ljava/net/URL;
    .param p3, "media"    # Lcom/google/gdata/data/media/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/media/MediaSource;",
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
    .line 573
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const-string v2, "media"

    invoke-static {p3, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v0, Lcom/google/gdata/util/ContentType;

    invoke-interface {p3}, Lcom/google/gdata/data/media/MediaSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "mediaContentType":Lcom/google/gdata/util/ContentType;
    sget-object v2, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    invoke-virtual {p0, v2, p1, v0}, Lcom/google/gdata/client/media/MediaService;->createRequest(Lcom/google/gdata/client/Service$GDataRequest$RequestType;Ljava/net/URL;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v1

    .line 580
    .local v1, "request":Lcom/google/gdata/client/Service$GDataRequest;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->startVersionScope()V

    .line 582
    invoke-virtual {p0, v1, p3}, Lcom/google/gdata/client/media/MediaService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 583
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 584
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/client/media/MediaService;->parseResponseData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 588
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v2

    .line 587
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/gdata/client/media/MediaService;->endVersionScope()V

    .line 588
    invoke-interface {v1}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v2
.end method
