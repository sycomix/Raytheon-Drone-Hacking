.class synthetic Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->values()[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$State:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$State:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$State:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->SHOULD_CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$State:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    .line 83
    :goto_2
    invoke-static {}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->values()[Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->DISCONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_ON:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    sget-object v1, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->SCREEN_OFF:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    .line 81
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
