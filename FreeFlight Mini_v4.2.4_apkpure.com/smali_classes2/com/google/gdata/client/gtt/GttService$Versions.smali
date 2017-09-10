.class public final Lcom/google/gdata/client/gtt/GttService$Versions;
.super Ljava/lang/Object;
.source "GttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/gtt/GttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Versions"
.end annotation


# static fields
.field public static final V1:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 54
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/gtt/GttService;

    const-string v2, "1.0"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/gdata/util/Version;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/client/Service$Versions;->V2_1:Lcom/google/gdata/util/Version;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/gtt/GttService$Versions;->V1:Lcom/google/gdata/util/Version;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
