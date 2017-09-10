.class synthetic Lcom/parrot/freeflight/core/DeviceConnector$6;
.super Ljava/lang/Object;
.source "DeviceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/DeviceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->values()[Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_DISCONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTING:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    :goto_3
    invoke-static {}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->values()[Lcom/parrot/freeflight/core/DeviceConnector$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/DeviceConnector$Event;->USER_DRONE_CHANGED:Lcom/parrot/freeflight/core/DeviceConnector$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/DeviceConnector$Event;->DEVICE_LIST_CHANGED:Lcom/parrot/freeflight/core/DeviceConnector$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/core/DeviceConnector$6;->$SwitchMap$com$parrot$freeflight$core$DeviceConnector$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/DeviceConnector$Event;->DRONE_CONNECTION_CHANGED:Lcom/parrot/freeflight/core/DeviceConnector$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/DeviceConnector$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    .line 300
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
