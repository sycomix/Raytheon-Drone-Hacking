.class public Lcom/google/gdata/client/contacts/ContactsService;
.super Lcom/google/gdata/client/GoogleService;
.source "ContactsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/contacts/ContactsService$Versions;
    }
.end annotation


# static fields
.field public static final CONTACTS_SERVICE:Ljava/lang/String; = "cp"

.field public static final CONTACTS_SERVICE_VERSION:Ljava/lang/String;

.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GContacts-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/contacts/ContactsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/contacts/ContactsService;->CONTACTS_SERVICE_VERSION:Ljava/lang/String;

    .line 76
    const-class v0, Lcom/google/gdata/client/contacts/ContactsService;

    sget-object v1, Lcom/google/gdata/client/contacts/ContactsService$Versions;->V3:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/contacts/ContactsService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "cp"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/google/gdata/client/contacts/ContactsService;->declareExtensions()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 111
    invoke-direct {p0}, Lcom/google/gdata/client/contacts/ContactsService;->declareExtensions()V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "cp"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/google/gdata/client/contacts/ContactsService;->declareExtensions()V

    .line 132
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/google/gdata/data/contacts/ContactFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/contacts/ContactFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/contacts/ContactsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/contacts/ContactFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 151
    new-instance v0, Lcom/google/gdata/data/contacts/ContactGroupFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/contacts/ContactGroupFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/contacts/ContactsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/contacts/ContactGroupFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 152
    new-instance v0, Lcom/google/gdata/data/contacts/ProfileFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/contacts/ProfileFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/contacts/ContactsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/contacts/ProfileFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 153
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 154
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/contacts/ContactsService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/contacts/ContactsService;->CONTACTS_SERVICE_VERSION:Ljava/lang/String;

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
