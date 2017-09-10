.class public final enum Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
.super Ljava/lang/Enum;
.source "DEVICE_CONTROLER_STATE_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

.field public static final enum DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

.field public static final enum DEVICE_CONTROLLER_STATE_STARTING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

.field public static final enum DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

.field public static final enum DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    const-string v1, "DEVICE_CONTROLLER_STATE_STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 9
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    const-string v1, "DEVICE_CONTROLLER_STATE_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 10
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    const-string v1, "DEVICE_CONTROLLER_STATE_STARTING"

    invoke-direct {v0, v1, v4}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 11
    new-instance v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    const-string v1, "DEVICE_CONTROLLER_STATE_STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTED:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STARTING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->DEVICE_CONTROLLER_STATE_STOPPING:Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->$VALUES:[Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->$VALUES:[Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/controller/devicecontrollers/DEVICE_CONTROLER_STATE_ENUM;

    return-object v0
.end method
