.class public Lcom/google/gdata/client/youtube/YouTubeService$Versions;
.super Ljava/lang/Object;
.source "YouTubeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/youtube/YouTubeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Versions"
.end annotation


# static fields
.field public static final ALL:[Lcom/google/gdata/util/Version;

.field public static final LATEST:Lcom/google/gdata/util/Version;

.field public static final V1:Lcom/google/gdata/util/Version;

.field public static final V2:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/youtube/YouTubeService;

    const-string v2, "1.0"

    new-array v3, v6, [Lcom/google/gdata/util/Version;

    sget-object v4, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->V1:Lcom/google/gdata/util/Version;

    .line 78
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/youtube/YouTubeService;

    const-string v2, "2.0"

    new-array v3, v6, [Lcom/google/gdata/util/Version;

    sget-object v4, Lcom/google/gdata/client/Service$Versions;->V2:Lcom/google/gdata/util/Version;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->V2:Lcom/google/gdata/util/Version;

    .line 84
    sget-object v0, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->V2:Lcom/google/gdata/util/Version;

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->LATEST:Lcom/google/gdata/util/Version;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/util/Version;

    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->V1:Lcom/google/gdata/util/Version;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->V2:Lcom/google/gdata/util/Version;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gdata/client/youtube/YouTubeService$Versions;->ALL:[Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
