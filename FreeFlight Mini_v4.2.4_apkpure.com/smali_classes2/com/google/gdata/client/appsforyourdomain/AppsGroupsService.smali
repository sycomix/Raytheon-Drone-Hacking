.class public Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;
.super Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;
.source "AppsGroupsService.java"


# static fields
.field public static final APPS_PROP_GROUP_DESC:Ljava/lang/String; = "description"

.field public static final APPS_PROP_GROUP_EMAIL:Ljava/lang/String; = "email"

.field public static final APPS_PROP_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final APPS_PROP_GROUP_MEMBER_ID:Ljava/lang/String; = "memberId"

.field public static final APPS_PROP_GROUP_NAME:Ljava/lang/String; = "groupName"

.field public static final APPS_PROP_GROUP_PERMISSION:Ljava/lang/String; = "emailPermission"

.field public static final APPS_PROP_GROUP_ROLE:Ljava/lang/String; = "role"

.field public static final BASE_URL:Ljava/lang/String; = "https://apps-apis.google.com/a/feeds/group/2.0/"


# instance fields
.field public final baseDomainUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "applicationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p2}, Lcom/google/gdata/client/appsforyourdomain/AppsPropertyService;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://apps-apis.google.com/a/feeds/group/2.0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    .line 82
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
    .line 63
    invoke-direct {p0, p3, p4}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->setUserCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public addMemberToGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "memberName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 278
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "memberId"

    invoke-virtual {v0, v1, p2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/member"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method

.method public addOwnerToGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 351
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "email"

    invoke-virtual {v0, v1, p2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "groupDescription"    # Ljava/lang/String;
    .param p4, "emailPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 181
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "groupName"

    invoke-virtual {v0, v1, p2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "emailPermission"

    invoke-virtual {v0, v1, p4}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v1
.end method

.method public deleteGroup(Ljava/lang/String;)V
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->delete(Ljava/net/URL;)V

    .line 243
    return-void
.end method

.method public deleteMemberFromGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "memberName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/member/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->delete(Ljava/net/URL;)V

    .line 297
    return-void
.end method

.method public doesEntityExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "feedUrlSuffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v3, v4}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    .line 117
    .local v1, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    invoke-virtual {v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getAllProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I
    :try_end_0
    .catch Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 120
    .end local v1    # "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    :cond_0
    return v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->getErrorCode()Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    move-result-object v3

    sget-object v4, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->EntityDoesNotExist:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    if-eq v3, v4, :cond_0

    .line 122
    throw v0
.end method

.method public getNextPage(Lcom/google/gdata/data/Link;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 2
    .param p1, "atomLink"    # Lcom/google/gdata/data/Link;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public isMember(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "memberId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/member/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->doesEntityExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/owner/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->doesEntityExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOwnerFromGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/owner/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->delete(Ljava/net/URL;)V

    .line 370
    return-void
.end method

.method public retreiveGroupOwners(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrieveAllGroups()Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrieveAllMembers(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/member"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrieveAllPagesOfGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getAllPages(Ljava/net/URL;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public retrieveGroup(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 3
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    return-object v0
.end method

.method public retrieveGroups(Ljava/lang/String;Z)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 3
    .param p1, "memberName"    # Ljava/lang/String;
    .param p2, "directOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?member="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&directOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    return-object v0
.end method

.method public retrievePageOfGroups(Lcom/google/gdata/data/Link;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 1
    .param p1, "next"    # Lcom/google/gdata/data/Link;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getNextPage(Lcom/google/gdata/data/Link;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    move-result-object v0

    return-object v0
.end method

.method public retrievePageOfMembers(Lcom/google/gdata/data/Link;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
    .locals 1
    .param p1, "next"    # Lcom/google/gdata/data/Link;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->getNextPage(Lcom/google/gdata/data/Link;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;

    move-result-object v0

    return-object v0
.end method

.method public updateGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "groupDescription"    # Ljava/lang/String;
    .param p4, "emailPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;-><init>()V

    .line 212
    .local v0, "entry":Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    const-string v1, "groupName"

    invoke-virtual {v0, v1, p2}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    if-eqz p3, :cond_1

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    if-eqz p4, :cond_2

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    const-string v1, "emailPermission"

    invoke-virtual {v0, v1, p4}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getAllProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->retrieveGroup(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_3
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->baseDomainUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/appsforyourdomain/AppsGroupsService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    goto :goto_0
.end method
