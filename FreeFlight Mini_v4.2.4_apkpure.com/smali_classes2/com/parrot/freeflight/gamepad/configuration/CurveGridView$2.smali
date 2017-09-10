.class synthetic Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;
.super Ljava/lang/Object;
.source "CurveGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 368
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->LINEAR:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_0:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    .line 182
    :goto_4
    invoke-static {}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->values()[Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    :try_start_5
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_BEZIER_QUADRATIC:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

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

    .line 368
    :catch_2
    move-exception v0

    goto :goto_4

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
