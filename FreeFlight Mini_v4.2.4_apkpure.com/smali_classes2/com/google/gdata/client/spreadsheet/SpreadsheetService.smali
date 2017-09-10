.class public Lcom/google/gdata/client/spreadsheet/SpreadsheetService;
.super Lcom/google/gdata/client/GoogleService;
.source "SpreadsheetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/spreadsheet/SpreadsheetService$Versions;
    }
.end annotation


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final SPREADSHEET_SERVICE:Ljava/lang/String; = "wise"

.field public static final SPREADSHEET_SERVICE_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSpread-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->SPREADSHEET_SERVICE_VERSION:Ljava/lang/String;

    .line 78
    const-class v0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;

    sget-object v1, Lcom/google/gdata/client/spreadsheet/SpreadsheetService$Versions;->V3:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "wise"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->declareExtensions()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 113
    invoke-direct {p0}, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->declareExtensions()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "wise"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->declareExtensions()V

    .line 134
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/google/gdata/data/spreadsheet/CellFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/CellFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/spreadsheet/CellFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 153
    new-instance v0, Lcom/google/gdata/data/spreadsheet/ListFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/ListFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/spreadsheet/ListFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 154
    new-instance v0, Lcom/google/gdata/data/spreadsheet/RecordFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/RecordFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/spreadsheet/RecordFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 155
    new-instance v0, Lcom/google/gdata/data/spreadsheet/SpreadsheetFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/spreadsheet/SpreadsheetFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 156
    new-instance v0, Lcom/google/gdata/data/spreadsheet/TableFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/TableFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/spreadsheet/TableFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 157
    new-instance v0, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 158
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/spreadsheet/SpreadsheetService;->SPREADSHEET_SERVICE_VERSION:Ljava/lang/String;

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
