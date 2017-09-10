.class Lcom/parrot/arsdk/arrouter/GamepadModeController$GamepadModeControllerHolder;
.super Ljava/lang/Object;
.source "GamepadModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/GamepadModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GamepadModeControllerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/parrot/arsdk/arrouter/GamepadModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/parrot/arsdk/arrouter/GamepadModeController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arrouter/GamepadModeController;-><init>(Lcom/parrot/arsdk/arrouter/GamepadModeController$1;)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/GamepadModeController$GamepadModeControllerHolder;->instance:Lcom/parrot/arsdk/arrouter/GamepadModeController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/parrot/arsdk/arrouter/GamepadModeController;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/parrot/arsdk/arrouter/GamepadModeController$GamepadModeControllerHolder;->instance:Lcom/parrot/arsdk/arrouter/GamepadModeController;

    return-object v0
.end method
