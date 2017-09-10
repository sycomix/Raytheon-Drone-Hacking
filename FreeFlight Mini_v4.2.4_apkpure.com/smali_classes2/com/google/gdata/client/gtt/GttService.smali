.class public Lcom/google/gdata/client/gtt/GttService;
.super Lcom/google/gdata/client/media/MediaService;
.source "GttService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/gtt/GttService$Versions;
    }
.end annotation


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final GTT_SERVICE:Ljava/lang/String; = "gtrans"

.field public static final GTT_SERVICE_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GGtt-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/gtt/GttService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/gtt/GttService;->GTT_SERVICE_VERSION:Ljava/lang/String;

    .line 63
    const-class v0, Lcom/google/gdata/client/gtt/GttService;

    sget-object v1, Lcom/google/gdata/client/gtt/GttService$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/gtt/GttService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "gtrans"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/google/gdata/client/gtt/GttService;->declareExtensions()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 98
    invoke-direct {p0}, Lcom/google/gdata/client/gtt/GttService;->declareExtensions()V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "gtrans"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/google/gdata/client/gtt/GttService;->declareExtensions()V

    .line 119
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/google/gdata/data/acl/AclFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/acl/AclFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/gtt/GttService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/acl/AclFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 139
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/gtt/DocumentFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/gtt/GttService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/gtt/DocumentFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 140
    new-instance v0, Lcom/google/gdata/data/gtt/GlossaryFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/gtt/GlossaryFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/gtt/GttService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/gtt/GlossaryFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 141
    new-instance v0, Lcom/google/gdata/data/gtt/TranslationMemoryFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/gtt/TranslationMemoryFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/gtt/GttService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/gtt/TranslationMemoryFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 142
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/gtt/GttService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/gtt/GttService;->GTT_SERVICE_VERSION:Ljava/lang/String;

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
