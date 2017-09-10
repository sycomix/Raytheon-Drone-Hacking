.class public final enum Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
.super Ljava/lang/Enum;
.source "DroneDiscoveringController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field public static final enum STATE_CLOSED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field public static final enum STATE_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field public static final enum STATE_DISCOVERING:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field public static final enum STATE_DISCOVERY_FAILED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field public static final enum STATE_IDLE:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field public static final enum STATE_UNKNOWN:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field public static final enum STATE_WAITING_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    const-string v1, "STATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 34
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_IDLE:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 35
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    const-string v1, "STATE_WAITING_BLUETOOTH_ON"

    invoke-direct {v0, v1, v5}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_WAITING_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 36
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    const-string v1, "STATE_DISCOVERING"

    invoke-direct {v0, v1, v6}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DISCOVERING:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 37
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    const-string v1, "STATE_DEVICE_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 38
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    const-string v1, "STATE_DISCOVERY_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DISCOVERY_FAILED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 39
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    const-string v1, "STATE_CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_CLOSED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_IDLE:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_WAITING_BLUETOOTH_ON:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DISCOVERING:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DEVICE_FOUND:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_DISCOVERY_FAILED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_CLOSED:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->$VALUES:[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->$VALUES:[Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    return-object v0
.end method
