.class public final enum Lcom/google/gdata/data/youtube/YtPublicationState$State;
.super Ljava/lang/Enum;
.source "YtPublicationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/youtube/YtPublicationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/youtube/YtPublicationState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/youtube/YtPublicationState$State;

.field public static final enum DELETED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

.field public static final enum FAILED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

.field public static final enum INCOMPLETE:Lcom/google/gdata/data/youtube/YtPublicationState$State;

.field public static final enum PROCESSING:Lcom/google/gdata/data/youtube/YtPublicationState$State;

.field public static final enum REJECTED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

.field public static final enum RESTRICTED:Lcom/google/gdata/data/youtube/YtPublicationState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    const-string v1, "INCOMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/youtube/YtPublicationState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->INCOMPLETE:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 52
    new-instance v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/youtube/YtPublicationState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->PROCESSING:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 55
    new-instance v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/youtube/YtPublicationState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->REJECTED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 58
    new-instance v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/youtube/YtPublicationState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->FAILED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 61
    new-instance v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v7}, Lcom/google/gdata/data/youtube/YtPublicationState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->DELETED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 64
    new-instance v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    const-string v1, "RESTRICTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/youtube/YtPublicationState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->RESTRICTED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/gdata/data/youtube/YtPublicationState$State;

    sget-object v1, Lcom/google/gdata/data/youtube/YtPublicationState$State;->INCOMPLETE:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/youtube/YtPublicationState$State;->PROCESSING:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/youtube/YtPublicationState$State;->REJECTED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/youtube/YtPublicationState$State;->FAILED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/youtube/YtPublicationState$State;->DELETED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/youtube/YtPublicationState$State;->RESTRICTED:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->$VALUES:[Lcom/google/gdata/data/youtube/YtPublicationState$State;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtPublicationState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/youtube/YtPublicationState$State;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;->$VALUES:[Lcom/google/gdata/data/youtube/YtPublicationState$State;

    invoke-virtual {v0}, [Lcom/google/gdata/data/youtube/YtPublicationState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/youtube/YtPublicationState$State;

    return-object v0
.end method
