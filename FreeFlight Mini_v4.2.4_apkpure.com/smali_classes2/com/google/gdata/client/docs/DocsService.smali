.class public Lcom/google/gdata/client/docs/DocsService;
.super Lcom/google/gdata/client/media/MediaService;
.source "DocsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/docs/DocsService$Versions;
    }
.end annotation


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final DOCS_SERVICE:Ljava/lang/String; = "writely"

.field public static final DOCS_SERVICE_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDocs-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/docs/DocsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/docs/DocsService;->DOCS_SERVICE_VERSION:Ljava/lang/String;

    .line 94
    const-class v0, Lcom/google/gdata/client/docs/DocsService;

    sget-object v1, Lcom/google/gdata/client/docs/DocsService$Versions;->V3:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/docs/DocsService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "writely"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/google/gdata/client/docs/DocsService;->declareExtensions()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 129
    invoke-direct {p0}, Lcom/google/gdata/client/docs/DocsService;->declareExtensions()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "writely"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/media/MediaService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/google/gdata/client/docs/DocsService;->declareExtensions()V

    .line 150
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/google/gdata/data/acl/AclFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/acl/AclFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/acl/AclFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 170
    new-instance v0, Lcom/google/gdata/data/docs/DocumentExportFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/DocumentExportFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/DocumentExportFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 171
    new-instance v0, Lcom/google/gdata/data/docs/MetadataFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/MetadataFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/MetadataFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 172
    new-instance v0, Lcom/google/gdata/data/docs/RevisionFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/RevisionFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/RevisionFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 176
    iget-object v0, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 177
    new-instance v0, Lcom/google/gdata/data/docs/AudioEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/AudioEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/AudioEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 178
    new-instance v0, Lcom/google/gdata/data/docs/DocumentEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/DocumentEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/DocumentEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 179
    new-instance v0, Lcom/google/gdata/data/docs/DocumentListFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/DocumentListFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/DocumentListFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 180
    new-instance v0, Lcom/google/gdata/data/docs/FolderEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/FolderEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/FolderEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 181
    new-instance v0, Lcom/google/gdata/data/docs/PdfEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/PdfEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/PdfEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 182
    new-instance v0, Lcom/google/gdata/data/docs/PresentationEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/PresentationEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/PresentationEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 183
    new-instance v0, Lcom/google/gdata/data/docs/SpreadsheetEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/SpreadsheetEntry;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/docs/SpreadsheetEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 184
    iget-object v0, p0, Lcom/google/gdata/client/docs/DocsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 185
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/docs/DocsService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method

.method private makeEntryUrl(Ljava/net/URL;Lcom/google/gdata/data/acl/AclScope;)Ljava/net/URL;
    .locals 9
    .param p1, "aclFeedUrl"    # Ljava/net/URL;
    .param p2, "scope"    # Lcom/google/gdata/data/acl/AclScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/gdata/data/acl/AclScope;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 278
    .end local v0    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 279
    .local v8, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method


# virtual methods
.method public addExtensions()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/gdata/client/docs/DocsService;->declareExtensions()V

    .line 193
    return-void
.end method

.method public delete(Ljava/net/URL;Lcom/google/gdata/data/acl/AclScope;)V
    .locals 1
    .param p1, "aclFeedUrl"    # Ljava/net/URL;
    .param p2, "scope"    # Lcom/google/gdata/data/acl/AclScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/client/docs/DocsService;->makeEntryUrl(Ljava/net/URL;Lcom/google/gdata/data/acl/AclScope;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/docs/DocsService;->delete(Ljava/net/URL;)V

    .line 270
    return-void
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/docs/DocsService;->DOCS_SERVICE_VERSION:Ljava/lang/String;

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

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/acl/AclScope;Lcom/google/gdata/data/acl/AclRole;)Lcom/google/gdata/data/acl/AclEntry;
    .locals 2
    .param p1, "aclFeedUrl"    # Ljava/net/URL;
    .param p2, "scope"    # Lcom/google/gdata/data/acl/AclScope;
    .param p3, "role"    # Lcom/google/gdata/data/acl/AclRole;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/google/gdata/data/acl/AclEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/acl/AclEntry;-><init>()V

    .line 218
    .local v0, "entry":Lcom/google/gdata/data/acl/AclEntry;
    invoke-virtual {v0, p2}, Lcom/google/gdata/data/acl/AclEntry;->setScope(Lcom/google/gdata/data/acl/AclScope;)V

    .line 219
    invoke-virtual {v0, p3}, Lcom/google/gdata/data/acl/AclEntry;->setRole(Lcom/google/gdata/data/acl/AclRole;)V

    .line 220
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/docs/DocsService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/acl/AclEntry;

    return-object v1
.end method

.method public insert(Ljava/net/URL;Ljava/util/List;)Lcom/google/gdata/data/docs/DocumentExportEntry;
    .locals 4
    .param p1, "exportFeedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/QueryParameter;",
            ">;)",
            "Lcom/google/gdata/data/docs/DocumentExportEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/docs/QueryParameter;>;"
    new-instance v0, Lcom/google/gdata/data/docs/DocumentExportEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;-><init>()V

    .line 298
    .local v0, "entry":Lcom/google/gdata/data/docs/DocumentExportEntry;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/docs/QueryParameter;

    .line 299
    .local v2, "param":Lcom/google/gdata/data/docs/QueryParameter;
    invoke-virtual {v0, v2}, Lcom/google/gdata/data/docs/DocumentExportEntry;->addQuery(Lcom/google/gdata/data/docs/QueryParameter;)V

    goto :goto_0

    .line 301
    .end local v2    # "param":Lcom/google/gdata/data/docs/QueryParameter;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/docs/DocsService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/docs/DocumentExportEntry;

    return-object v3
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/acl/AclScope;Lcom/google/gdata/data/acl/AclRole;)Lcom/google/gdata/data/acl/AclEntry;
    .locals 3
    .param p1, "aclFeedUrl"    # Ljava/net/URL;
    .param p2, "scope"    # Lcom/google/gdata/data/acl/AclScope;
    .param p3, "role"    # Lcom/google/gdata/data/acl/AclRole;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/client/docs/DocsService;->makeEntryUrl(Ljava/net/URL;Lcom/google/gdata/data/acl/AclScope;)Ljava/net/URL;

    move-result-object v1

    .line 245
    .local v1, "entryUrl":Ljava/net/URL;
    new-instance v0, Lcom/google/gdata/data/acl/AclEntry;

    invoke-direct {v0}, Lcom/google/gdata/data/acl/AclEntry;-><init>()V

    .line 246
    .local v0, "entry":Lcom/google/gdata/data/acl/AclEntry;
    invoke-virtual {v0, p2}, Lcom/google/gdata/data/acl/AclEntry;->setScope(Lcom/google/gdata/data/acl/AclScope;)V

    .line 247
    invoke-virtual {v0, p3}, Lcom/google/gdata/data/acl/AclEntry;->setRole(Lcom/google/gdata/data/acl/AclRole;)V

    .line 248
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gdata/data/acl/AclEntry;->setId(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/docs/DocsService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/acl/AclEntry;

    return-object v2
.end method
