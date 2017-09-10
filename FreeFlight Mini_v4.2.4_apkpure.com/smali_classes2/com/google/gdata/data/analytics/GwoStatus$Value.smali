.class public final enum Lcom/google/gdata/data/analytics/GwoStatus$Value;
.super Ljava/lang/Enum;
.source "GwoStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/analytics/GwoStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/analytics/GwoStatus$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/analytics/GwoStatus$Value;

.field public static final enum ARCHIVED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

.field public static final enum FINISHED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

.field public static final enum NEW:Lcom/google/gdata/data/analytics/GwoStatus$Value;

.field public static final enum PAUSED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

.field public static final enum RUNNING:Lcom/google/gdata/data/analytics/GwoStatus$Value;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;

    const-string v1, "ARCHIVED"

    const-string v2, "Archived"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/analytics/GwoStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->ARCHIVED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    .line 57
    new-instance v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;

    const-string v1, "FINISHED"

    const-string v2, "Finished"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/analytics/GwoStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->FINISHED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    .line 60
    new-instance v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;

    const-string v1, "NEW"

    const-string v2, "New"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/analytics/GwoStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->NEW:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    .line 63
    new-instance v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;

    const-string v1, "PAUSED"

    const-string v2, "Paused"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/analytics/GwoStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->PAUSED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    .line 66
    new-instance v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;

    const-string v1, "RUNNING"

    const-string v2, "Running"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/analytics/GwoStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->RUNNING:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/data/analytics/GwoStatus$Value;

    sget-object v1, Lcom/google/gdata/data/analytics/GwoStatus$Value;->ARCHIVED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/analytics/GwoStatus$Value;->FINISHED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/analytics/GwoStatus$Value;->NEW:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/analytics/GwoStatus$Value;->PAUSED:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/analytics/GwoStatus$Value;->RUNNING:Lcom/google/gdata/data/analytics/GwoStatus$Value;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->$VALUES:[Lcom/google/gdata/data/analytics/GwoStatus$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->value:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/analytics/GwoStatus$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/analytics/GwoStatus$Value;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->$VALUES:[Lcom/google/gdata/data/analytics/GwoStatus$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/analytics/GwoStatus$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/analytics/GwoStatus$Value;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/data/analytics/GwoStatus$Value;->value:Ljava/lang/String;

    return-object v0
.end method
