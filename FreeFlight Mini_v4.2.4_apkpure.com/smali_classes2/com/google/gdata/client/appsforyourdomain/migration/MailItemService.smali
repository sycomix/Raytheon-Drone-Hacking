.class public Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService;
.super Lcom/google/gdata/client/media/MediaService;
.source "MailItemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService$Versions;
    }
.end annotation


# static fields
.field public static final APPS_APIS_DOMAIN:Ljava/lang/String; = "apps-apis.google.com"

.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final URL_PREFIX:Ljava/lang/String; = "/a/feeds/migration/2.0"

.field public static final URL_SUFFIX:Ljava/lang/String; = "/mail/batch"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService;

    sget-object v1, Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "apps"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 114
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemFeed;-><init>()V

    invoke-virtual {p0}, Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 115
    return-void
.end method


# virtual methods
.method public batch(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/data/appsforyourdomain/migration/MailItemFeed;)Lcom/google/gdata/data/appsforyourdomain/migration/MailItemFeed;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "feed"    # Lcom/google/gdata/data/appsforyourdomain/migration/MailItemFeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/batch/BatchInterruptedException;,
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://apps-apis.google.com/a/feeds/migration/2.0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mail/batch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "batchUrl":Ljava/net/URL;
    invoke-virtual {p0, v0, p3}, Lcom/google/gdata/client/appsforyourdomain/migration/MailItemService;->batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/migration/MailItemFeed;

    return-object v1
.end method
