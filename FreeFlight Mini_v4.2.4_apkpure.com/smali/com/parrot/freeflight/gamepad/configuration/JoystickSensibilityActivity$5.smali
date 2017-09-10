.class synthetic Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$5;
.super Ljava/lang/Object;
.source "JoystickSensibilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 330
    invoke-static {}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->values()[Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$5;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$5;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$5;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_BEZIER_QUADRATIC:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
