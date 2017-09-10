.class public Lcom/google/gdata/client/Service$Versions;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Versions"
.end annotation


# static fields
.field public static final V1:Lcom/google/gdata/util/Version;

.field public static final V2:Lcom/google/gdata/util/Version;

.field public static final V2_1:Lcom/google/gdata/util/Version;

.field public static final V2_2:Lcom/google/gdata/util/Version;

.field public static final V3:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 112
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/Service;

    new-array v2, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;II[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    .line 119
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/Service;

    new-array v2, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;II[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/Service$Versions;->V2:Lcom/google/gdata/util/Version;

    .line 125
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/Service;

    new-array v2, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;II[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/Service$Versions;->V2_1:Lcom/google/gdata/util/Version;

    .line 131
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/Service;

    new-array v2, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;II[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/Service$Versions;->V2_2:Lcom/google/gdata/util/Version;

    .line 137
    new-instance v0, Lcom/google/gdata/util/Version;

    const-class v1, Lcom/google/gdata/client/Service;

    const/4 v2, 0x3

    new-array v3, v4, [Lcom/google/gdata/util/Version;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/gdata/util/Version;-><init>(Ljava/lang/Class;II[Lcom/google/gdata/util/Version;)V

    sput-object v0, Lcom/google/gdata/client/Service$Versions;->V3:Lcom/google/gdata/util/Version;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
