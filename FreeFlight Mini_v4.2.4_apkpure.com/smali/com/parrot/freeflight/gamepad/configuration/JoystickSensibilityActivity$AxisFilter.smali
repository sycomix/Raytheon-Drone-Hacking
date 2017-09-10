.class public final enum Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
.super Ljava/lang/Enum;
.source "JoystickSensibilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AxisFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

.field public static final enum AXIS_FILTER_BEZIER_QUADRATIC:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

.field public static final enum AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

.field public static final enum AXIS_FILTER_UNKNOWN:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;


# instance fields
.field private mFilterTag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 525
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    const-string v1, "AXIS_FILTER_UNKNOWN"

    const-string/jumbo v2, "unknown tag"

    invoke-direct {v0, v1, v3, v2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_UNKNOWN:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 527
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    const-string v1, "AXIS_FILTER_MULTI_POINT"

    const-string v2, "ARMF"

    invoke-direct {v0, v1, v4, v2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 528
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    const-string v1, "AXIS_FILTER_BEZIER_QUADRATIC"

    const-string v2, "ARXF"

    invoke-direct {v0, v1, v5, v2}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_BEZIER_QUADRATIC:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 524
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_UNKNOWN:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_BEZIER_QUADRATIC:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->$VALUES:[Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "filterTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 533
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 534
    iput-object p3, p0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->mFilterTag:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public static getFilter(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 538
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_UNKNOWN:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 539
    .local v0, "filterEnum":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    invoke-static {}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->values()[Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 541
    .local v1, "item":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    iget-object v5, v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->mFilterTag:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 542
    move-object v0, v1

    .line 547
    .end local v1    # "item":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    :cond_0
    sget-object v2, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_UNKNOWN:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    if-ne v0, v2, :cond_1

    .line 548
    iput-object p0, v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->mFilterTag:Ljava/lang/String;

    .line 552
    :cond_1
    return-object v0

    .line 540
    .restart local v1    # "item":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 524
    const-class v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->$VALUES:[Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    return-object v0
.end method
