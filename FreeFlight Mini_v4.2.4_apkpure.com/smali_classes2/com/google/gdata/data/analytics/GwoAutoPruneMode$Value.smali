.class public final enum Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;
.super Ljava/lang/Enum;
.source "GwoAutoPruneMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/analytics/GwoAutoPruneMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

.field public static final enum AGGRESSIVE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

.field public static final enum CONSERVATIVE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

.field public static final enum NONE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

.field public static final enum NORMAL:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    const-string v1, "AGGRESSIVE"

    const-string v2, "Aggressive"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->AGGRESSIVE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    .line 57
    new-instance v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    const-string v1, "CONSERVATIVE"

    const-string v2, "Conservative"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->CONSERVATIVE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    .line 60
    new-instance v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    const-string v1, "NONE"

    const-string v2, "None"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->NONE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    .line 63
    new-instance v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    const-string v1, "NORMAL"

    const-string v2, "Normal"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->NORMAL:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    sget-object v1, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->AGGRESSIVE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->CONSERVATIVE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->NONE:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->NORMAL:Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->$VALUES:[Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->value:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->$VALUES:[Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode$Value;->value:Ljava/lang/String;

    return-object v0
.end method
