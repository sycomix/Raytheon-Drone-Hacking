.class public Lcom/google/gdata/client/analytics/AnalyticsService;
.super Lcom/google/gdata/client/GoogleService;
.source "AnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/analytics/AnalyticsService$Versions;
    }
.end annotation


# static fields
.field public static final ANALYTICS_SERVICE:Ljava/lang/String; = "analytics"

.field public static final ANALYTICS_SERVICE_VERSION:Ljava/lang/String;

.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GAnalytics-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/analytics/AnalyticsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/analytics/AnalyticsService;->ANALYTICS_SERVICE_VERSION:Ljava/lang/String;

    .line 88
    const-class v0, Lcom/google/gdata/client/analytics/AnalyticsService;

    sget-object v1, Lcom/google/gdata/client/analytics/AnalyticsService$Versions;->V2_3:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/analytics/AnalyticsService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "analytics"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/google/gdata/client/analytics/AnalyticsService;->declareExtensions()V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 123
    invoke-direct {p0}, Lcom/google/gdata/client/analytics/AnalyticsService;->declareExtensions()V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "analytics"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/google/gdata/client/analytics/AnalyticsService;->declareExtensions()V

    .line 144
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/google/gdata/data/analytics/AbPageVariationFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/AbPageVariationFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/AbPageVariationFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 165
    new-instance v0, Lcom/google/gdata/data/analytics/AccountFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/AccountFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/AccountFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 166
    new-instance v0, Lcom/google/gdata/data/analytics/CombinationFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/CombinationFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/CombinationFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 167
    new-instance v0, Lcom/google/gdata/data/analytics/DataFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/DataFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/DataFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 168
    new-instance v0, Lcom/google/gdata/data/analytics/ExperimentFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/ExperimentFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/ExperimentFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 169
    new-instance v0, Lcom/google/gdata/data/analytics/ManagementFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/ManagementFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/ManagementFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 170
    new-instance v0, Lcom/google/gdata/data/analytics/SectionFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/SectionFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/SectionFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 171
    new-instance v0, Lcom/google/gdata/data/analytics/VariationFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/VariationFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/analytics/AnalyticsService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/analytics/VariationFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 172
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/analytics/AnalyticsService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/analytics/AnalyticsService;->ANALYTICS_SERVICE_VERSION:Ljava/lang/String;

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
