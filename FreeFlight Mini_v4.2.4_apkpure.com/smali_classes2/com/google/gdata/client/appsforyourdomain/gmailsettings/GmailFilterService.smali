.class public Lcom/google/gdata/client/appsforyourdomain/gmailsettings/GmailFilterService;
.super Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainService;
.source "GmailFilterService.java"


# static fields
.field public static final APPS_APIS_DOMAIN:Ljava/lang/String; = "apps-apis.google.com"

.field public static final BATCH_URL_SUFFIX:Ljava/lang/String; = "/email/settings/filter/batch"

.field public static final URL_PREFIX:Ljava/lang/String; = "/a/feeds/2.0"

.field public static final URL_SUFFIX:Ljava/lang/String; = "/email/settings/filter"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/gdata/client/appsforyourdomain/gmailsettings/GmailFilterService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 74
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;-><init>()V

    invoke-virtual {p0}, Lcom/google/gdata/client/appsforyourdomain/gmailsettings/GmailFilterService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 75
    return-void
.end method


# virtual methods
.method public batch(Ljava/lang/String;Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "feed"    # Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/batch/BatchInterruptedException;,
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://apps-apis.google.com/a/feeds/2.0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/email/settings/filter/batch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "batchUrl":Ljava/net/URL;
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/appsforyourdomain/gmailsettings/GmailFilterService;->batch(Ljava/net/URL;Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/IFeed;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v1
.end method

.method public insert(Ljava/lang/String;Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://apps-apis.google.com/a/feeds/2.0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/email/settings/filter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "singleUrl":Ljava/net/URL;
    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/client/appsforyourdomain/gmailsettings/GmailFilterService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method
