.class public final enum Lcom/parrot/freeflight3/update/UpdateState;
.super Ljava/lang/Enum;
.source "UpdateState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight3/update/UpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight3/update/UpdateState;

.field public static final enum CONNECTING:Lcom/parrot/freeflight3/update/UpdateState;

.field public static final enum ERROR:Lcom/parrot/freeflight3/update/UpdateState;

.field public static final enum FINISH:Lcom/parrot/freeflight3/update/UpdateState;

.field public static final enum STARTED:Lcom/parrot/freeflight3/update/UpdateState;

.field public static final enum STOPPED:Lcom/parrot/freeflight3/update/UpdateState;

.field public static final enum UPLOADING:Lcom/parrot/freeflight3/update/UpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/parrot/freeflight3/update/UpdateState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight3/update/UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/UpdateState;->STARTED:Lcom/parrot/freeflight3/update/UpdateState;

    .line 5
    new-instance v0, Lcom/parrot/freeflight3/update/UpdateState;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight3/update/UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/UpdateState;->UPLOADING:Lcom/parrot/freeflight3/update/UpdateState;

    .line 6
    new-instance v0, Lcom/parrot/freeflight3/update/UpdateState;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight3/update/UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/UpdateState;->FINISH:Lcom/parrot/freeflight3/update/UpdateState;

    .line 7
    new-instance v0, Lcom/parrot/freeflight3/update/UpdateState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight3/update/UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    .line 8
    new-instance v0, Lcom/parrot/freeflight3/update/UpdateState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight3/update/UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/UpdateState;->CONNECTING:Lcom/parrot/freeflight3/update/UpdateState;

    .line 9
    new-instance v0, Lcom/parrot/freeflight3/update/UpdateState;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight3/update/UpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight3/update/UpdateState;->STOPPED:Lcom/parrot/freeflight3/update/UpdateState;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/parrot/freeflight3/update/UpdateState;

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->STARTED:Lcom/parrot/freeflight3/update/UpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->UPLOADING:Lcom/parrot/freeflight3/update/UpdateState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->FINISH:Lcom/parrot/freeflight3/update/UpdateState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->ERROR:Lcom/parrot/freeflight3/update/UpdateState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight3/update/UpdateState;->CONNECTING:Lcom/parrot/freeflight3/update/UpdateState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight3/update/UpdateState;->STOPPED:Lcom/parrot/freeflight3/update/UpdateState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight3/update/UpdateState;->$VALUES:[Lcom/parrot/freeflight3/update/UpdateState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight3/update/UpdateState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/parrot/freeflight3/update/UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight3/update/UpdateState;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight3/update/UpdateState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/parrot/freeflight3/update/UpdateState;->$VALUES:[Lcom/parrot/freeflight3/update/UpdateState;

    invoke-virtual {v0}, [Lcom/parrot/freeflight3/update/UpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight3/update/UpdateState;

    return-object v0
.end method
