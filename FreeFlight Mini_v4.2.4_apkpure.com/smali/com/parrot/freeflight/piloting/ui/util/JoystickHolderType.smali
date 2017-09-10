.class public final enum Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
.super Ljava/lang/Enum;
.source "JoystickHolderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_COMMON_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_COMMON_GAZ_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_COMMON_GAZ_YAW:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_COMMON_GYROSCOPE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_COMMON_INVISIBLE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_COMMON_PITCH_ROLL:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_DEFAULT:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_HYDROFOIL_RUDDER:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_HYDROFOIL_SPEED:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

.field public static final enum JS_WINGX_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;


# instance fields
.field public final lowerLayerBackGroundRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final lowerLayerRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final type:I

.field public final upperLayerBackgroundRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final upperLayerGravity:I

.field public final upperLayerRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 12
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_DEFAULT"

    const/4 v2, 0x0

    const v3, 0x7f020256

    const v4, 0x7f020114

    const v5, 0x7f020256

    const v6, 0x7f020115

    const/16 v7, 0x11

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_DEFAULT:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 21
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_COMMON_INVISIBLE"

    const/4 v2, 0x1

    const v3, 0x7f020256

    const v4, 0x7f020256

    const v5, 0x7f020256

    const v6, 0x7f020256

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_INVISIBLE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 30
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_COMMON_GYROSCOPE"

    const/4 v2, 0x2

    const v3, 0x7f020188

    const v4, 0x7f020256

    const v5, 0x7f020256

    const v6, 0x7f0201e5

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GYROSCOPE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 39
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_COMMON_GAZ_YAW"

    const/4 v2, 0x3

    const v3, 0x7f020188

    const v4, 0x7f0201cd

    const v5, 0x7f020256

    const v6, 0x7f020189

    const/16 v7, 0x11

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_YAW:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 48
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_COMMON_GAZ_CAP"

    const/4 v2, 0x4

    const v3, 0x7f020188

    const v4, 0x7f0201b8

    const v5, 0x7f020256

    const v6, 0x7f020189

    const/16 v7, 0x11

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 57
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_COMMON_CAP"

    const/4 v2, 0x5

    const v3, 0x7f020188

    const v4, 0x7f0201cc

    const v5, 0x7f020256

    const v6, 0x7f020256

    const/16 v7, 0x11

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 66
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_COMMON_PITCH_ROLL"

    const/4 v2, 0x6

    const v3, 0x7f020188

    const v4, 0x7f0201cb

    const v5, 0x7f020256

    const v6, 0x7f020189

    const/16 v7, 0x11

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_PITCH_ROLL:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 75
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_HYDROFOIL_RUDDER"

    const/4 v2, 0x7

    const v3, 0x7f020256

    const v4, 0x7f0201b9

    const v5, 0x7f020188

    const v6, 0x7f0201b6

    const/16 v7, 0x11

    const/4 v8, 0x3

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_HYDROFOIL_RUDDER:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 84
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_HYDROFOIL_SPEED"

    const/16 v2, 0x8

    const v3, 0x7f020256

    const v4, 0x7f0201bc

    const v5, 0x7f020188

    const v6, 0x7f0201b7

    const/16 v7, 0x50

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_HYDROFOIL_SPEED:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 92
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const-string v1, "JS_WINGX_CAP"

    const/16 v2, 0x9

    const v3, 0x7f020188

    const v4, 0x7f0201bb

    const v5, 0x7f020256

    const v6, 0x7f020189

    const/16 v7, 0x11

    const/4 v8, 0x4

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_WINGX_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    const/4 v1, 0x0

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_DEFAULT:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_INVISIBLE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GYROSCOPE:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_YAW:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_GAZ_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_COMMON_PITCH_ROLL:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_HYDROFOIL_RUDDER:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_HYDROFOIL_SPEED:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->JS_WINGX_CAP:Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->$VALUES:[Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "lowerLayerBackGroundRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "lowerLayerRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5, "upperLayerBackgroundRes"    # I
    .param p6, "upperLayerRes"    # I
    .param p7, "gravity"    # I
    .param p8, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput p3, p0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerBackGroundRes:I

    .line 114
    iput p4, p0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->lowerLayerRes:I

    .line 115
    iput p5, p0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerBackgroundRes:I

    .line 116
    iput p6, p0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerRes:I

    .line 117
    iput p7, p0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->upperLayerGravity:I

    .line 118
    iput p8, p0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->type:I

    .line 119
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->$VALUES:[Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/piloting/ui/util/JoystickHolderType;

    return-object v0
.end method
