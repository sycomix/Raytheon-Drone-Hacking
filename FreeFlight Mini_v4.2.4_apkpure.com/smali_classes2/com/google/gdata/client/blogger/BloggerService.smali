.class public Lcom/google/gdata/client/blogger/BloggerService;
.super Lcom/google/gdata/client/GoogleService;
.source "BloggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/blogger/BloggerService$Versions;
    }
.end annotation


# static fields
.field public static final BLOGGER_SERVICE:Ljava/lang/String; = "blogger"

.field public static final BLOGGER_SERVICE_VERSION:Ljava/lang/String;

.field public static final BLOGSPOT_VERSION:Lcom/google/gdata/util/Version;

.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBlogger-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/blogger/BloggerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/blogger/BloggerService;->BLOGGER_SERVICE_VERSION:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/google/gdata/client/blogger/BloggerService;

    sget-object v1, Lcom/google/gdata/client/blogger/BloggerService$Versions;->V2:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/blogger/BloggerService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    .line 152
    sget-object v0, Lcom/google/gdata/client/blogger/BloggerService$Versions;->V2:Lcom/google/gdata/util/Version;

    sput-object v0, Lcom/google/gdata/client/blogger/BloggerService;->BLOGSPOT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "blogger"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/google/gdata/client/blogger/BloggerService;->declareExtensions()V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 105
    invoke-direct {p0}, Lcom/google/gdata/client/blogger/BloggerService;->declareExtensions()V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "blogger"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/google/gdata/client/blogger/BloggerService;->declareExtensions()V

    .line 125
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/google/gdata/data/blogger/BlogCommentFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/blogger/BlogCommentFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/blogger/BloggerService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/blogger/BlogCommentFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 144
    new-instance v0, Lcom/google/gdata/data/blogger/BlogFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/blogger/BlogFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/blogger/BloggerService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/blogger/BlogFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 145
    new-instance v0, Lcom/google/gdata/data/blogger/BlogPostFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/blogger/BlogPostFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/blogger/BloggerService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/blogger/BlogPostFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 146
    new-instance v0, Lcom/google/gdata/data/blogger/PostCommentFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/blogger/PostCommentFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/blogger/BloggerService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/blogger/PostCommentFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 147
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/blogger/BloggerService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/blogger/BloggerService;->BLOGGER_SERVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/client/GoogleService;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
