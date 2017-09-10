.class public Lcom/google/gdata/client/sites/SitesService;
.super Lcom/google/gdata/client/media/MediaService;
.source "SitesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/sites/SitesService$Versions;
    }
.end annotation


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final SITES_SERVICE:Ljava/lang/String; = "jotspot"

.field public static final SITES_SERVICE_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSites-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v0, Lcom/google/gdata/client/sites/SitesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/sites/SitesService;->SITES_SERVICE_VERSION:Ljava/lang/String;

    .line 95
    const-class v0, Lcom/google/gdata/client/sites/SitesService;

    sget-object v1, Lcom/google/gdata/client/sites/SitesService$Versions;->V1_4:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/sites/SitesService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void

    .line 62
    :cond_0
    const-class v0, Lcom/google/gdata/client/sites/SitesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "jotspot"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/google/gdata/client/sites/SitesService;->declareExtensions()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 130
    invoke-direct {p0}, Lcom/google/gdata/client/sites/SitesService;->declareExtensions()V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "jotspot"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/google/gdata/client/sites/SitesService;->declareExtensions()V

    .line 151
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/google/gdata/data/acl/AclFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/acl/AclFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/acl/AclFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 170
    new-instance v0, Lcom/google/gdata/data/sites/SiteFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/SiteFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/SiteFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 174
    iget-object v0, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 175
    new-instance v0, Lcom/google/gdata/data/sites/ActivityFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/ActivityFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/ActivityFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 176
    new-instance v0, Lcom/google/gdata/data/sites/AnnouncementEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/AnnouncementEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/AnnouncementEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 177
    new-instance v0, Lcom/google/gdata/data/sites/AnnouncementsPageEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/AnnouncementsPageEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/AnnouncementsPageEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 178
    new-instance v0, Lcom/google/gdata/data/sites/AttachmentEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/AttachmentEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/AttachmentEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 179
    new-instance v0, Lcom/google/gdata/data/sites/CommentEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/CommentEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/CommentEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 180
    new-instance v0, Lcom/google/gdata/data/sites/ContentFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/ContentFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/ContentFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 181
    new-instance v0, Lcom/google/gdata/data/sites/CreationActivityEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/CreationActivityEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/CreationActivityEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 182
    new-instance v0, Lcom/google/gdata/data/sites/DeletionActivityEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/DeletionActivityEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/DeletionActivityEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 183
    new-instance v0, Lcom/google/gdata/data/sites/EditActivityEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/EditActivityEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/EditActivityEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 184
    new-instance v0, Lcom/google/gdata/data/sites/FileCabinetPageEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/FileCabinetPageEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/FileCabinetPageEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 185
    new-instance v0, Lcom/google/gdata/data/sites/ListItemEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/ListItemEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/ListItemEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 186
    new-instance v0, Lcom/google/gdata/data/sites/ListPageEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/ListPageEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/ListPageEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 187
    new-instance v0, Lcom/google/gdata/data/sites/MoveActivityEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/MoveActivityEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/MoveActivityEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 188
    new-instance v0, Lcom/google/gdata/data/sites/RecoveryActivityEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/RecoveryActivityEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/RecoveryActivityEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 189
    new-instance v0, Lcom/google/gdata/data/sites/RevisionFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/RevisionFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/RevisionFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 190
    new-instance v0, Lcom/google/gdata/data/sites/WebAttachmentEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/WebAttachmentEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/WebAttachmentEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 191
    new-instance v0, Lcom/google/gdata/data/sites/WebPageEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/sites/WebPageEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/sites/WebPageEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 192
    iget-object v0, p0, Lcom/google/gdata/client/sites/SitesService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 193
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/sites/SitesService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/sites/SitesService;->SITES_SERVICE_VERSION:Ljava/lang/String;

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
