.class public Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;
.super Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;
.source "SingleSignOnService.java"


# instance fields
.field protected domainUrlBase:Ljava/lang/String;

.field protected ssoSettingsUrl:Ljava/lang/String;

.field protected ssoSigningKeyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p2}, Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://apps-apis.google.com/a/feeds/domain/2.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->domainUrlBase:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->domainUrlBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sso/general"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->ssoSettingsUrl:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->domainUrlBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sso/signingkey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->ssoSigningKeyUrl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "adminEmail"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "applicationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p3, p4}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getSsoSettings()Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->ssoSettingsUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public getSsoSigningKey()Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->ssoSigningKeyUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public updateSSOSettings(Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 2
    .param p1, "entry"    # Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->ssoSettingsUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public updateSsoSigningKey(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 3
    .param p1, "base64EncodedKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 102
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "signingKey"

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->ssoSigningKeyUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/SingleSignOnService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method
