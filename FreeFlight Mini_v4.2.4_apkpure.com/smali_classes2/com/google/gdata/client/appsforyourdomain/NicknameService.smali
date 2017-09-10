.class public Lcom/google/gdata/client/appsforyourdomain/NicknameService;
.super Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainService;
.source "NicknameService.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameFeed;-><init>()V

    invoke-virtual {p0}, Lcom/google/gdata/client/appsforyourdomain/NicknameService;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/provisioning/NicknameFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 42
    return-void
.end method
