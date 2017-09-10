.class public Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;
.super Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;
.source "DomainSettingsService.java"


# instance fields
.field protected accountSettingsUrl:Ljava/lang/String;

.field protected appearanceUrl:Ljava/lang/String;

.field protected domainBaseUrl:Ljava/lang/String;

.field protected generalSettingsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p2}, Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->generalSettingsUrl:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->domainBaseUrl:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->appearanceUrl:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    .line 56
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

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->domainBaseUrl:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->domainBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountInformation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->domainBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "general/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->generalSettingsUrl:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->domainBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appearance/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->appearanceUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "adminUser"    # Ljava/lang/String;
    .param p2, "adminPassword"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "applicationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p3, p4}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getCountryCodeForDomain()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "countryCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "countryCode"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerPIN()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "customerPIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "customerPIN"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->generalSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "defaultLanguage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "defaultLanguage"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainCreationTime()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "creationTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "creationTime"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainEdition()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "edition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "edition"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainSecondaryEmailAddress()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminSecondaryEmail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "adminSecondaryEmail"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainVerificationStatus()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isVerified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "isVerified"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->generalSettingsUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "maximumNumberOfUsers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v2, "maximumNumberOfUsers"

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "usersCount":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->generalSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "organizationName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "organizationName"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportPIN()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "supportPIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    const-string v1, "supportPIN"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultLanguage(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .param p1, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 91
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "defaultLanguage"

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->generalSettingsUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "defaultLanguage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method

.method public setDomainLogo(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .param p1, "base64EncodedImage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 316
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "logoImage"

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->appearanceUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "customLogo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method

.method public setDomainSecondaryEmailAddress(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .param p1, "adminSecondaryEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 298
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "adminSecondaryEmail"

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->accountSettingsUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "adminSecondaryEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method

.method public setOrganizationName(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .param p1, "organizationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 125
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "organizationName"

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->generalSettingsUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "organizationName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/adminsettings/DomainSettingsService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method
