.class public final enum Lcom/google/gdata/data/youtube/YtStatus$Value;
.super Ljava/lang/Enum;
.source "YtStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/YtStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/youtube/YtStatus$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/youtube/YtStatus$Value;

.field public static final enum ACCEPTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

.field public static final enum PENDING:Lcom/google/gdata/data/youtube/YtStatus$Value;

.field public static final enum REJECTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

.field public static final enum REQUESTED:Lcom/google/gdata/data/youtube/YtStatus$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/gdata/data/youtube/YtStatus$Value;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/youtube/YtStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtStatus$Value;->PENDING:Lcom/google/gdata/data/youtube/YtStatus$Value;

    new-instance v0, Lcom/google/gdata/data/youtube/YtStatus$Value;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/youtube/YtStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtStatus$Value;->ACCEPTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

    new-instance v0, Lcom/google/gdata/data/youtube/YtStatus$Value;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/youtube/YtStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtStatus$Value;->REJECTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

    new-instance v0, Lcom/google/gdata/data/youtube/YtStatus$Value;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/youtube/YtStatus$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtStatus$Value;->REQUESTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/gdata/data/youtube/YtStatus$Value;

    sget-object v1, Lcom/google/gdata/data/youtube/YtStatus$Value;->PENDING:Lcom/google/gdata/data/youtube/YtStatus$Value;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/youtube/YtStatus$Value;->ACCEPTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/youtube/YtStatus$Value;->REJECTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/youtube/YtStatus$Value;->REQUESTED:Lcom/google/gdata/data/youtube/YtStatus$Value;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/data/youtube/YtStatus$Value;->$VALUES:[Lcom/google/gdata/data/youtube/YtStatus$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtStatus$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/data/youtube/YtStatus$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtStatus$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/youtube/YtStatus$Value;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/data/youtube/YtStatus$Value;->$VALUES:[Lcom/google/gdata/data/youtube/YtStatus$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/data/youtube/YtStatus$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/youtube/YtStatus$Value;

    return-object v0
.end method
