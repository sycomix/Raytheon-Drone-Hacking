.class public Lcom/google/gdata/client/youtube/YouTubeService;
.super Lcom/google/gdata/client/media/MediaService;
.source "YouTubeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/youtube/YouTubeService$Versions;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTH_URL:Ljava/net/URL;

.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field private static final SERVICE_NAME:Ljava/lang/String; = "youtube"

.field private static final SERVICE_VERSION:Ljava/lang/String; = "YouTube-Java/1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com/youtube"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_AUTH_URL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const-class v1, Lcom/google/gdata/client/youtube/YouTubeService;

    sget-object v2, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-static {v1, v2}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v1

    sput-object v1, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "abnormal":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_AUTH_URL:Ljava/net/URL;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/client/youtube/YouTubeService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "developerId"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeService;->DEFAULT_AUTH_URL:Ljava/net/URL;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/client/youtube/YouTubeService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 6
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "developerId"    # Ljava/lang/String;
    .param p3, "authBaseUrl"    # Ljava/net/URL;

    .prologue
    .line 134
    const-string v2, "youtube"

    invoke-virtual {p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, p1, v3, v1}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeService;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v2

    const-string v3, "X-GData-Key"

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeService;->getRequestFactory()Lcom/google/gdata/client/Service$GDataRequestFactory;

    move-result-object v1

    const-string v2, "X-GData-Client"

    invoke-interface {v1, v2, p1}, Lcom/google/gdata/client/Service$GDataRequestFactory;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/gdata/client/youtube/YouTubeService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    .line 142
    .local v0, "profile":Lcom/google/gdata/data/ExtensionProfile;
    new-instance v1, Lcom/google/gdata/data/youtube/ChannelFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/ChannelFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 143
    new-instance v1, Lcom/google/gdata/data/youtube/ComplaintFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/ComplaintFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 144
    new-instance v1, Lcom/google/gdata/data/youtube/CommentFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/CommentFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 145
    new-instance v1, Lcom/google/gdata/data/youtube/FriendFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/FriendFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 146
    new-instance v1, Lcom/google/gdata/data/youtube/UserEventFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/UserEventFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 147
    new-instance v1, Lcom/google/gdata/data/youtube/PlaylistFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/PlaylistFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 148
    new-instance v1, Lcom/google/gdata/data/youtube/PlaylistLinkFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/PlaylistLinkFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 149
    new-instance v1, Lcom/google/gdata/data/youtube/RatingFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/RatingFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 150
    new-instance v1, Lcom/google/gdata/data/youtube/SubscriptionFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/SubscriptionFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 151
    new-instance v1, Lcom/google/gdata/data/youtube/UserProfileFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/UserProfileFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 152
    new-instance v1, Lcom/google/gdata/data/youtube/VideoFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/youtube/VideoFeed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/youtube/YouTubeService;->setStrictValidation(Z)V

    .line 155
    return-void

    .line 134
    .end local v0    # "profile":Lcom/google/gdata/data/ExtensionProfile;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/youtube/YouTubeService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method public static isCompatible(Lcom/google/gdata/util/Version;)Z
    .locals 2
    .param p0, "version"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 184
    if-nez p0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Version cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    invoke-static {}, Lcom/google/gdata/client/youtube/YouTubeService;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getFormUploadToken(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/youtube/FormUploadToken;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)",
            "Lcom/google/gdata/data/youtube/FormUploadToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    if-nez p2, :cond_0

    .line 203
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Must supply entry"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/youtube/YouTubeService;->createInsertRequest(Ljava/net/URL;)Lcom/google/gdata/client/Service$GDataRequest;

    move-result-object v0

    .line 207
    .local v0, "request":Lcom/google/gdata/client/Service$GDataRequest;
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/youtube/YouTubeService;->writeRequestData(Lcom/google/gdata/client/Service$GDataRequest;Ljava/lang/Object;)V

    .line 208
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->execute()V

    .line 210
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->getParseSource()Lcom/google/gdata/data/ParseSource;

    move-result-object v1

    .line 212
    .local v1, "resultEntrySource":Lcom/google/gdata/data/ParseSource;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gdata/data/youtube/FormUploadToken;->parse(Ljava/io/InputStream;)Lcom/google/gdata/data/youtube/FormUploadToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 214
    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Lcom/google/gdata/client/Service$GDataRequest;->end()V

    throw v2
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YouTube-Java/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/client/media/MediaService;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
