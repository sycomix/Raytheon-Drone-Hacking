.class public Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;
.super Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;
.source "DelosJoystickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler$SwipeDirection;,
        Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler$PilotingControllerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/IJoystickHandler",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMAND_JOYSTICK_THRESHOLD:D = 0.8

.field public static final CONTROLLER_TYPE_ACE:I = 0x0

.field public static final CONTROLLER_TYPE_JOYPAD:I = 0x2

.field public static final CONTROLLER_TYPE_NORMAL:I = 0x1

.field public static final DEFAULT_CONTROLLER_TYPE:I = 0x2

.field private static final DOWN:I = 0x1

.field private static final LEFT:I = 0x2

.field private static final NONE:I = 0x4

.field private static final RIGHT:I = 0x3

.field private static final UP:I


# instance fields
.field private commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCommandJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPilotingControllerType:I

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWaitingCommand:Z

.field private movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "joystickPreferences"    # Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/IJoystickHandler;-><init>()V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    .line 57
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_DEFAULT:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 59
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_DEFAULT:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mCommandJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mAppContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    .line 78
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 79
    return-void
.end method

.method private applyTheme(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .prologue
    const v3, 0x7f020256

    .line 215
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v0

    .line 216
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mCommandJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    iget v1, v1, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerBackGroundRes:I

    if-eq v1, v3, :cond_0

    .line 218
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToBackground(Landroid/view/View;I)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mCommandJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    iget v1, v1, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerBackgroundRes:I

    if-eq v1, v3, :cond_1

    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getForegroundImage()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToBackground(Landroid/view/View;I)V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    iget v1, v1, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerBackGroundRes:I

    if-eq v1, v3, :cond_2

    .line 227
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToBackground(Landroid/view/View;I)V

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    iget v1, v1, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerBackgroundRes:I

    if-eq v1, v3, :cond_3

    .line 230
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getForegroundImage()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToBackground(Landroid/view/View;I)V

    .line 233
    :cond_3
    return-void

    .line 215
    .end local v0    # "color":I
    :cond_4
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0e00c9

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private getSwipeDirection(IF)I
    .locals 6
    .param p1, "direction"    # I
    .param p2, "value"    # F

    .prologue
    const-wide v4, 0x3fe999999999999aL    # 0.8

    const-wide v2, -0x4016666666666666L    # -0.8

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 409
    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 394
    :pswitch_0
    float-to-double v0, p2

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    .line 395
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :cond_1
    float-to-double v0, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 402
    :pswitch_1
    float-to-double v0, p2

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    .line 403
    const/4 v0, 0x3

    goto :goto_0

    .line 404
    :cond_2
    float-to-double v0, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 405
    const/4 v0, 0x2

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHydrofoil()Z
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWingX()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onValueChangedInDirection(Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;FI)V
    .locals 7
    .param p1, "holderType"    # Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    .param p2, "value"    # F
    .param p3, "direction"    # I

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, -0x5a

    .line 330
    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler$1;->$SwitchMap$com$parrot$freeflight$piloting$ui$util$JoystickHolderType:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 332
    :pswitch_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestGaz(F)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestYaw(F)V

    goto :goto_0

    .line 336
    :pswitch_1
    if-nez p3, :cond_2

    .line 337
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestGaz(F)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->getSwipeDirection(IF)I

    move-result v0

    .line 340
    .local v0, "swipeDirection":I
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mWaitingCommand:Z

    if-eqz v1, :cond_0

    if-eq v0, v5, :cond_0

    .line 341
    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mWaitingCommand:Z

    .line 342
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 344
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCap(S)V

    goto :goto_0

    .line 347
    :pswitch_3
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCap(S)V

    goto :goto_0

    .line 354
    .end local v0    # "swipeDirection":I
    :pswitch_4
    if-nez p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestPitch(F)V

    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestRoll(F)V

    goto :goto_0

    .line 358
    :pswitch_5
    invoke-direct {p0, p3, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->getSwipeDirection(IF)I

    move-result v0

    .line 359
    .restart local v0    # "swipeDirection":I
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mWaitingCommand:Z

    if-eqz v1, :cond_0

    if-eq v0, v5, :cond_0

    .line 360
    iput-boolean v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mWaitingCommand:Z

    .line 361
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 363
    :pswitch_6
    const/16 v1, -0xb4

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCap(S)V

    goto :goto_0

    .line 366
    :pswitch_7
    const/16 v1, 0xb4

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCap(S)V

    goto :goto_0

    .line 369
    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCap(S)V

    goto :goto_0

    .line 372
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCap(S)V

    goto :goto_0

    .line 378
    .end local v0    # "swipeDirection":I
    :pswitch_a
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestYaw(F)V

    goto :goto_0

    .line 381
    :pswitch_b
    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestGaz(F)V

    goto :goto_0

    .line 384
    :pswitch_c
    if-nez p3, :cond_4

    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestPitch(F)V

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestYaw(F)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 342
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 361
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z
    .locals 3
    .param p1, "js"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v1, :cond_6

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 236
    .local v0, "currentHolder":Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    :goto_0
    if-eq p2, v0, :cond_8

    .line 237
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerBackGroundRes:I

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerBackGroundRes:I

    if-eq v1, v2, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerBackGroundRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 240
    :cond_0
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerRes:I

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerRes:I

    if-eq v1, v2, :cond_1

    .line 241
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerRes:I

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setBackgroundImage(I)V

    .line 243
    :cond_1
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerBackgroundRes:I

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerBackgroundRes:I

    if-eq v1, v2, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getForegroundImage()Landroid/widget/ImageView;

    move-result-object v1

    iget v2, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 246
    :cond_2
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerRes:I

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerRes:I

    if-eq v1, v2, :cond_3

    .line 247
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerRes:I

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImage(I)V

    .line 249
    :cond_3
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerGravity:I

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerGravity:I

    if-eq v1, v2, :cond_4

    .line 250
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerGravity:I

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImageGravity(I)V

    .line 252
    :cond_4
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->type:I

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->type:I

    if-eq v1, v2, :cond_5

    .line 253
    iget v1, p2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->type:I

    invoke-virtual {p1, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setJoystickType(I)V

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v1, :cond_7

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 259
    :goto_1
    const/4 v1, 0x1

    .line 261
    :goto_2
    return v1

    .line 235
    .end local v0    # "currentHolder":Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    :cond_6
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mCommandJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    goto :goto_0

    .line 257
    .restart local v0    # "currentHolder":Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    :cond_7
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mCommandJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    goto :goto_1

    .line 261
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private resetPitchRoll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 464
    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V

    .line 465
    return-void
.end method

.method private update(Z)V
    .locals 6
    .param p1, "isModelChanged"    # Z

    .prologue
    const/4 v3, 0x1

    .line 125
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v4, :cond_5

    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "isJoystickUpdated":Z
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->isWingX()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXFlyingMode()I

    move-result v4

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXFlyingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v1

    .line 130
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_WINGX_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 171
    :goto_0
    if-eqz v1, :cond_1

    .line 172
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetThumbPosition()V

    .line 173
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetThumbPosition()V

    .line 175
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->isConnected()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->setOnlineMode(Z)V

    .line 178
    :cond_1
    if-eqz p1, :cond_4

    .line 180
    const/4 v2, 0x1

    .line 181
    .local v2, "movementJsEnable":Z
    const/4 v0, 0x1

    .line 182
    .local v0, "commandJsEnable":Z
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->isHydrofoil()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    packed-switch v4, :pswitch_data_0

    .line 196
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_3

    .line 197
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setEnabled(Z)V

    .line 198
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(Z)V

    .line 200
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v3

    if-eq v3, v0, :cond_4

    .line 201
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setEnabled(Z)V

    .line 202
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(Z)V

    .line 205
    .end local v0    # "commandJsEnable":Z
    .end local v2    # "movementJsEnable":Z
    :cond_4
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->applyTheme(Z)V

    .line 207
    .end local v1    # "isJoystickUpdated":Z
    :cond_5
    return-void

    .line 131
    .restart local v1    # "isJoystickUpdated":Z
    :cond_6
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->isHydrofoil()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 132
    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GYROSCOPE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v1

    .line 141
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_INVISIBLE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 142
    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->hasHydrofoilGasJoystick()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 135
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GYROSCOPE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v1

    .line 137
    :cond_7
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_HYDROFOIL_RUDDER:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 138
    goto/16 :goto_0

    .line 144
    :pswitch_2
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->hasHydrofoilGasJoystick()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 145
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_HYDROFOIL_SPEED:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v1

    .line 147
    :cond_8
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_HYDROFOIL_RUDDER:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 148
    goto/16 :goto_0

    .line 153
    :cond_9
    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 159
    :pswitch_3
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_YAW:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v1

    .line 160
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 161
    goto/16 :goto_0

    .line 155
    :pswitch_4
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_YAW:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v1

    .line 156
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GYROSCOPE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 157
    goto/16 :goto_0

    .line 163
    :pswitch_5
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_YAW:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v1

    .line 164
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    sget-object v5, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_PITCH_ROLL:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v4, v5}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->refreshJoystickType(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 165
    goto/16 :goto_0

    .line 185
    .restart local v0    # "commandJsEnable":Z
    .restart local v2    # "movementJsEnable":Z
    :pswitch_6
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->hasHydrofoilGasJoystick()Z

    move-result v2

    .line 186
    goto/16 :goto_1

    .line 188
    :pswitch_7
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->hasHydrofoilGasJoystick()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/Joystick;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v2, v3

    .line 189
    :goto_2
    const/4 v0, 0x0

    .line 190
    goto/16 :goto_1

    .line 188
    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    .line 192
    :pswitch_8
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->hasHydrofoilGasJoystick()Z

    move-result v2

    goto/16 :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 153
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onDoubleTap(Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 1
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestFlip()V

    .line 479
    :cond_0
    return-void
.end method

.method public onMotionManagerHeadingChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "heading"    # F

    .prologue
    .line 302
    return-void
.end method

.method public onMotionManagerHorizonChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "horizonAngle"    # F

    .prologue
    .line 306
    return-void
.end method

.method public onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "pitch"    # F

    .prologue
    .line 285
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestPitch(F)V

    .line 286
    return-void
.end method

.method public onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
    .locals 1
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;
    .param p2, "roll"    # F

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->isHydrofoil()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestYaw(F)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestRoll(F)V

    goto :goto_0
.end method

.method public onMotionManagerShakeDetection(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V
    .locals 0
    .param p1, "motionManager"    # Lcom/parrot/freeflight/piloting/motion/MotionManager;

    .prologue
    .line 310
    return-void
.end method

.method public onPressed(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)V
    .locals 2
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
    .param p2, "pressed"    # Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_2

    .line 415
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    packed-switch v0, :pswitch_data_0

    .line 459
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 417
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCommandsActivationChanged(Z)V

    .line 418
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    .line 419
    if-nez p2, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->resetPitchRoll()V

    goto :goto_0

    .line 418
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    goto :goto_1

    .line 427
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    if-ne v0, v1, :cond_0

    .line 428
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mWaitingCommand:Z

    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_0

    .line 435
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 437
    :pswitch_3
    iput-boolean p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mWaitingCommand:Z

    goto :goto_0

    .line 441
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCommandsActivationChanged(Z)V

    .line 442
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v1

    if-eqz p2, :cond_3

    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_ENABLED_REGULAR:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    .line 443
    if-nez p2, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->resetPitchRoll()V

    goto :goto_0

    .line 442
    :cond_3
    sget-object v0, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    goto :goto_2

    .line 449
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->requestCommandsActivationChanged(Z)V

    .line 450
    invoke-static {}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->getInstance()Lcom/parrot/freeflight/piloting/motion/MotionManager;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;->ARMOTIONMANAGER_MOTION_MODE_DISABLED:Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/motion/MotionManager;->setMotionMode(Lcom/parrot/freeflight/piloting/motion/MotionManager$eARMOTIONMANAGER_MOTION_MODE;)V

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 435
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V
    .locals 1
    .param p1, "joystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
    .param p2, "value"    # F
    .param p3, "direction"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mMovementJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v0, p2, p3}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;FI)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-ne p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mCommandJsHolder:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-direct {p0, v0, p2, p3}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;FI)V

    goto :goto_0
.end method

.method public pause()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickControllerDidTouchUp()V

    .line 110
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requestCap(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 482
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->requestCap(S)V

    .line 485
    :cond_0
    return-void
.end method

.method public requestCommandsActivationChanged(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->requestCommandsActivationChanged(Z)V

    .line 516
    :cond_0
    return-void
.end method

.method public requestGaz(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 507
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->throttleAt(F)V

    .line 510
    :cond_0
    return-void
.end method

.method public requestPitch(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 488
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->pitchAt(F)V

    .line 491
    :cond_0
    return-void
.end method

.method public requestRoll(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 495
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->rollAt(F)V

    .line 498
    :cond_0
    return-void
.end method

.method public requestYaw(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 501
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->yawTo(F)V

    .line 504
    :cond_0
    return-void
.end method

.method public setJoysticks(Lcom/parrot/freeflight/piloting/widget/Joystick;Lcom/parrot/freeflight/piloting/widget/Joystick;)V
    .locals 4
    .param p1, "leftJoystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rightJoystick"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->movementJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 84
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->commandJoystick:Lcom/parrot/freeflight/piloting/widget/Joystick;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setNeutralRatio(F)V

    .line 87
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v2}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->updatePilotingControllerType(Landroid/content/SharedPreferences;)V

    .line 89
    return-void
.end method

.method public setOnlineMode(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->applyTheme(Z)V

    .line 212
    return-void
.end method

.method public shouldImplementDoubleTap()Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public updateModel(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->update(Z)V

    .line 95
    return-void
.end method

.method public bridge synthetic updateModel(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    check-cast p1, Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->updateModel(Lcom/parrot/freeflight/core/model/DelosModel;)V

    return-void
.end method

.method public updatePilotingControllerType(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mJoystickPreferences:Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/preference/IJoystickPreferences;->getPilotingTypePreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "newType":I
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->mPilotingControllerType:I

    .line 121
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosJoystickHandler;->update(Z)V

    .line 122
    return-void
.end method
