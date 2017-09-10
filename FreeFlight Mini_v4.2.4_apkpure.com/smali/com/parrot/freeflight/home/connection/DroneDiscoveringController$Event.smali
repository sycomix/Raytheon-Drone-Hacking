.class final enum Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;
.super Ljava/lang/Enum;
.source "DroneDiscoveringController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_BLUETOOTH_OFF:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_CLOSE_TIMED_OUT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_DISCOVERY_TIMED_OUT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_EXIT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_RESET:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

.field public static final enum EVENT_START_DISCOVERY:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_START_DISCOVERY"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_START_DISCOVERY:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 44
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_BLUETOOTH_ON"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 45
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_BLUETOOTH_OFF"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_BLUETOOTH_OFF:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 46
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_RESET"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_RESET:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 47
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_DEVICE_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 48
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_DISCOVERY_TIMED_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_DISCOVERY_TIMED_OUT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 49
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_CLOSE_TIMED_OUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_CLOSE_TIMED_OUT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 50
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    const-string v1, "EVENT_EXIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_EXIT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_START_DISCOVERY:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_BLUETOOTH_OFF:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_RESET:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_DISCOVERY_TIMED_OUT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_CLOSE_TIMED_OUT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_EXIT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->$VALUES:[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->$VALUES:[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    return-object v0
.end method
