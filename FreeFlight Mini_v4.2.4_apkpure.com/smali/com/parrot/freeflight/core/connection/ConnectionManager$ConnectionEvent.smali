.class final enum Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;
.super Ljava/lang/Enum;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_APP_EXIT:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_CANCEL:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_DISCONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_DRONE_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_DRONE_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_DRONE_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_DISCONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_CTRL_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_CTRL_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_CTRL_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

.field public static final enum EVENT_REMOTE_DRONE_DISCONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_CONNECT_DEVICE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 61
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_DRONE_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 62
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_DRONE_STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 63
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_DRONE_DISCONNECTION_REQUESTED"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_DRONE_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 65
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 66
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_DISCONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 67
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_CTRL_CONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 68
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_CTRL_STOPPED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 69
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_CTRL_DISCONNECTION_REQUESTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 70
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_CTRL_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 71
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 72
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_DRONE_CONNECTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 73
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_REMOTE_DRONE_DISCONNECTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_DRONE_DISCONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 74
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_CANCEL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CANCEL:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 75
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_DISCONNECT_DEVICE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DISCONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 76
    new-instance v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    const-string v1, "EVENT_APP_EXIT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_APP_EXIT:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    .line 59
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DRONE_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_DEVICE_CONTROLLER_DISCONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_STOPPED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_DISCONNECTION_REQUESTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_FAILED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_CTRL_CONNECTED_TO_DRONE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_REMOTE_DRONE_DISCONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CANCEL:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_DISCONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_APP_EXIT:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->$VALUES:[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->$VALUES:[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    return-object v0
.end method
