.class public final Lcom/google/gdata/client/analytics/AnalyticsService$Versions;
.super Ljava/lang/Object;
.source "AnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/analytics/AnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Versions"
.end annotation


# static fields
.field public static final V1:Lcom/google/gdata/util/Version;

.field public static final V2:Lcom/google/gdata/util/Version;

.field public static final V2_1:Lcom/google/gdata/util/Version;

.field public static final V2_2:Lcom/google/gdata/util/Version;

.field public static final V2_3:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/analytics/AnalyticsService;

    const-string v2, "1.0"

    new-array v3, v6, [Lcom/google/gdata/util/Version;

    sget-object v4, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/analytics/AnalyticsService$Versions;->V1:Lcom/google/gdata/util/Version;

    .line 63
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/analytics/AnalyticsService;

    const-string v2, "2.0"

    new-array v3, v6, [Lcom/google/gdata/util/Version;

    sget-object v4, Lcom/google/gdata/client/Service$Versions;->V2:Lcom/google/gdata/util/Version;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/analytics/AnalyticsService$Versions;->V2:Lcom/google/gdata/util/Version;

    .line 69
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/analytics/AnalyticsService;

    const-string v2, "2.1"

    new-array v3, v6, [Lcom/google/gdata/util/Version;

    sget-object v4, Lcom/google/gdata/client/Service$Versions;->V2_1:Lcom/google/gdata/util/Version;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/analytics/AnalyticsService$Versions;->V2_1:Lcom/google/gdata/util/Version;

    .line 74
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/analytics/AnalyticsService;

    const-string v2, "2.2"

    new-array v3, v6, [Lcom/google/gdata/util/Version;

    sget-object v4, Lcom/google/gdata/client/Service$Versions;->V2_1:Lcom/google/gdata/util/Version;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/analytics/AnalyticsService$Versions;->V2_2:Lcom/google/gdata/util/Version;

    .line 79
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/analytics/AnalyticsService;

    const-string v2, "2.3"

    new-array v3, v6, [Lcom/google/gdata/util/Version;

    sget-object v4, Lcom/google/gdata/client/Service$Versions;->V2_1:Lcom/google/gdata/util/Version;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/analytics/AnalyticsService$Versions;->V2_3:Lcom/google/gdata/util/Version;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
