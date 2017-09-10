.class public final enum Lcom/parrot/freeflight3/ARYoutubeManager$State;
.super Ljava/lang/Enum;
.source "ARYoutubeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/ARYoutubeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight3/ARYoutubeManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight3/ARYoutubeManager$State;

.field public static final enum IDLE:Lcom/parrot/freeflight3/ARYoutubeManager$State;

.field public static final enum UNKNOWN:Lcom/parrot/freeflight3/ARYoutubeManager$State;

.field public static final enum UPLOADING:Lcom/parrot/freeflight3/ARYoutubeManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/ARYoutubeManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;->UNKNOWN:Lcom/parrot/freeflight3/ARYoutubeManager$State;

    new-instance v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight3/ARYoutubeManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;->IDLE:Lcom/parrot/freeflight3/ARYoutubeManager$State;

    new-instance v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight3/ARYoutubeManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;->UPLOADING:Lcom/parrot/freeflight3/ARYoutubeManager$State;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight3/ARYoutubeManager$State;

    sget-object v1, Lcom/parrot/freeflight3/ARYoutubeManager$State;->UNKNOWN:Lcom/parrot/freeflight3/ARYoutubeManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight3/ARYoutubeManager$State;->IDLE:Lcom/parrot/freeflight3/ARYoutubeManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight3/ARYoutubeManager$State;->UPLOADING:Lcom/parrot/freeflight3/ARYoutubeManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;->$VALUES:[Lcom/parrot/freeflight3/ARYoutubeManager$State;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight3/ARYoutubeManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight3/ARYoutubeManager$State;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/parrot/freeflight3/ARYoutubeManager$State;->$VALUES:[Lcom/parrot/freeflight3/ARYoutubeManager$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight3/ARYoutubeManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight3/ARYoutubeManager$State;

    return-object v0
.end method
