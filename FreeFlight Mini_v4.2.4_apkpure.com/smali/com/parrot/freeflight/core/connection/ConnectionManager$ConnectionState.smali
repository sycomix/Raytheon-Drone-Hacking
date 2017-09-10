.class public final enum Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_DRONE_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_CTRL_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_CTRL_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_REMOTE_DRONE_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field public static final enum STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 38
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_NOT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 39
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_DRONE_CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 40
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_DRONE_DISCONNECTING"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 41
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_DRONE_CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 42
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_DRONE_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 44
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_CTRL_CONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 45
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_CTRL_RECONNECTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 46
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_CTRL_DISCONNECTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 47
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_CTRL_CONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 49
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_DRONE_CONNECTING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 50
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_DRONE_RECONNECTING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 51
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_DRONE_CONNECTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 52
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    const-string v1, "STATE_REMOTE_DRONE_DISCONNECTING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 36
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_UNKNOWN:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_RECONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->$VALUES:[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->$VALUES:[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object v0
.end method


# virtual methods
.method public isDroneConnected()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
