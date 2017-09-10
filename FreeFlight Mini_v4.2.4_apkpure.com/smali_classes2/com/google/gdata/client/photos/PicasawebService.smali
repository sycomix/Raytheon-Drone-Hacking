.class public Lcom/google/gdata/client/photos/PicasawebService;
.super Lcom/google/gdata/client/media/MediaService;
.source "PicasawebService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/photos/PicasawebService$Versions;
    }
.end annotation


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final PWA_SERVICE:Ljava/lang/String; = "lh2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/google/gdata/client/photos/PicasawebService;

    sget-object v1, Lcom/google/gdata/client/photos/PicasawebService$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/photos/PicasawebService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "lh2"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/google/gdata/client/photos/PicasawebService;->declareExtensions()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 103
    invoke-direct {p0}, Lcom/google/gdata/client/photos/PicasawebService;->declareExtensions()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "lh2"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/google/gdata/client/photos/PicasawebService;->declareExtensions()V

    .line 124
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 143
    new-instance v0, Lcom/google/gdata/data/photos/AlbumEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/AlbumEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/AlbumEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 144
    new-instance v0, Lcom/google/gdata/data/photos/AlbumFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/AlbumFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/AlbumFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 145
    new-instance v0, Lcom/google/gdata/data/photos/CommentEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/CommentEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/CommentEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 146
    new-instance v0, Lcom/google/gdata/data/photos/PhotoEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/PhotoEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/PhotoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 147
    new-instance v0, Lcom/google/gdata/data/photos/PhotoFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/PhotoFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/PhotoFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 148
    new-instance v0, Lcom/google/gdata/data/photos/TagEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/TagEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/TagEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 149
    new-instance v0, Lcom/google/gdata/data/photos/UserEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/UserEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/UserEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 150
    new-instance v0, Lcom/google/gdata/data/photos/UserFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/UserFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/photos/PicasawebService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/photos/UserFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 151
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/photos/PicasawebService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lh2 "

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
