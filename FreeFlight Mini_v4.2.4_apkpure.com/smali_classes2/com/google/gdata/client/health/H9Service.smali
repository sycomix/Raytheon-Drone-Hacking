.class public Lcom/google/gdata/client/health/H9Service;
.super Lcom/google/gdata/client/GoogleService;
.source "H9Service.java"


# static fields
.field public static final H9_SERVICE:Ljava/lang/String; = "weaver"

.field public static final H9_SERVICE_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GHealth-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/health/H9Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/health/H9Service;->H9_SERVICE_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/client/health/H9Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/google/gdata/data/health/ProfileFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/health/ProfileFeed;-><init>()V

    invoke-virtual {p0}, Lcom/google/gdata/client/health/H9Service;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/health/ProfileFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 77
    new-instance v0, Lcom/google/gdata/data/health/RegisterFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/health/RegisterFeed;-><init>()V

    invoke-virtual {p0}, Lcom/google/gdata/client/health/H9Service;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/health/RegisterFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/health/H9Service;->H9_SERVICE_VERSION:Ljava/lang/String;

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
