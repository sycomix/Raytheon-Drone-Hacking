.class public final enum Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;
.super Ljava/lang/Enum;
.source "LedsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/LedsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEDS_CONTROLLER_BLINK_MODE_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

.field public static final enum BLINK_ALL_WHITE:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

.field public static final enum BLINK_ONE_RED:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    const-string v1, "BLINK_ONE_RED"

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->BLINK_ONE_RED:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    .line 12
    new-instance v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    const-string v1, "BLINK_ALL_WHITE"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->BLINK_ALL_WHITE:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->BLINK_ONE_RED:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->BLINK_ALL_WHITE:Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->$VALUES:[Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arrouter/LedsController$LEDS_CONTROLLER_BLINK_MODE_ENUM;

    return-object v0
.end method
