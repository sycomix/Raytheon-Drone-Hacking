.class public final enum Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
.super Ljava/lang/Enum;
.source "ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum ACCESSORY_CLAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum ACCESSORY_GUN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum CCW_180_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum CCW_90_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum CW_180_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum CW_90_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum FLIP_BACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum FLIP_FRONT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum FLIP_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum FLIP_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum GEAR_DOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum GEAR_UP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum LIGHT_BLINK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum LIGHT_CONTINUOUS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum LIGHT_SINUS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum LIGHT_TOGGLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum PLANE_MODE_BACKSWAP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum PLANE_MODE_HALF_BAREL_ROLL_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum PLANE_MODE_HALF_BAREL_ROLL_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum PLANE_MODE_LOOPING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum PLANE_MODE_TOGGLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum TAKEOFF_LAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum TAKE_PICTURE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum THROWN_TAKEOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field public static final enum UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "UNKNOWN"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 43
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "TAKEOFF_LAND"

    const-string v2, "Take off or land"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->TAKEOFF_LAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 45
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "TAKE_PICTURE"

    const-string v2, "Take a picture"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->TAKE_PICTURE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "FLIP_LEFT"

    const-string v2, "Flip left"

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "FLIP_RIGHT"

    const-string v2, "Flip right"

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "FLIP_FRONT"

    const/4 v2, 0x5

    const-string v3, "Flip front"

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_FRONT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "FLIP_BACK"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string v4, "Flip back"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_BACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "EMERGENCY"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string v4, "Emergency motors shutdown"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "ACCESSORY_GUN"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string v4, "Launch USB accessory gun action (shoot)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->ACCESSORY_GUN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "THROWN_TAKEOFF"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const-string v4, "Thrown take off"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->THROWN_TAKEOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "CW_90_SWIPE"

    const/16 v2, 0xa

    const/16 v3, 0x9

    const-string v4, "90 deg clockwise swipe"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CW_90_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "CCW_90_SWIPE"

    const/16 v2, 0xb

    const/16 v3, 0xa

    const-string v4, "90 deg counter clockwise swipe"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CCW_90_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "CW_180_SWIPE"

    const/16 v2, 0xc

    const/16 v3, 0xb

    const-string v4, "180 deg clockwise swipe"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CW_180_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "CCW_180_SWIPE"

    const/16 v2, 0xd

    const/16 v3, 0xc

    const-string v4, "180 deg counter clockwise swipe"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CCW_180_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "GEAR_UP"

    const/16 v2, 0xe

    const/16 v3, 0xd

    const-string v4, "increase gear"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->GEAR_UP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "GEAR_DOWN"

    const/16 v2, 0xf

    const/16 v3, 0xe

    const-string v4, "decrease gear"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->GEAR_DOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "PLANE_MODE_HALF_BAREL_ROLL_RIGHT"

    const/16 v2, 0x10

    const/16 v3, 0xf

    const-string v4, "in plane mode make a 180 deg anticlockwise swipe on roll axis"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_HALF_BAREL_ROLL_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 75
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "PLANE_MODE_HALF_BAREL_ROLL_LEFT"

    const/16 v2, 0x11

    const/16 v3, 0x10

    const-string v4, "in plane mode make a 180 deg clockwise swipe on roll axis"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_HALF_BAREL_ROLL_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 77
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "PLANE_MODE_BACKSWAP"

    const/16 v2, 0x12

    const/16 v3, 0x11

    const-string v4, "in plane mode make a 180 deg clockwise swipe on pitch axis"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_BACKSWAP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 79
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "PLANE_MODE_LOOPING"

    const/16 v2, 0x13

    const/16 v3, 0x12

    const-string v4, "vertical circular loop in plane mode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_LOOPING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 81
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "PLANE_MODE_TOGGLE"

    const/16 v2, 0x14

    const/16 v3, 0x13

    const-string v4, "switch between plane mode and quad mode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_TOGGLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 83
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "ACCESSORY_CLAW"

    const/16 v2, 0x15

    const/16 v3, 0x14

    const-string v4, "Launch USB accessory claw action (open/close)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->ACCESSORY_CLAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 85
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "LIGHT_CONTINUOUS"

    const/16 v2, 0x16

    const/16 v3, 0x15

    const-string v4, "switch continuous light (ON/OFF)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_CONTINUOUS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 87
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "LIGHT_BLINK"

    const/16 v2, 0x17

    const/16 v3, 0x16

    const-string v4, "switch blink light (ON/OFF)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_BLINK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 89
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "LIGHT_SINUS"

    const/16 v2, 0x18

    const/16 v3, 0x17

    const-string v4, "switch sinus light (ON/OFF)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_SINUS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 91
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    const-string v1, "LIGHT_TOGGLE"

    const/16 v2, 0x19

    const/16 v3, 0x18

    const-string v4, "toggle between light animations (OFF-continuous-blink-sinus-OFF)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_TOGGLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 39
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->TAKEOFF_LAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->TAKE_PICTURE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_FRONT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->FLIP_BACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->EMERGENCY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->ACCESSORY_GUN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->THROWN_TAKEOFF:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CW_90_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CCW_90_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CW_180_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->CCW_180_SWIPE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->GEAR_UP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->GEAR_DOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_HALF_BAREL_ROLL_RIGHT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_HALF_BAREL_ROLL_LEFT:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_BACKSWAP:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_LOOPING:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->PLANE_MODE_TOGGLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->ACCESSORY_CLAW:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_CONTINUOUS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_BLINK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_SINUS:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->LIGHT_TOGGLE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->value:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->value:I

    .line 105
    iput-object p4, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 122
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 123
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    move-result-object v2

    .line 124
    .local v2, "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    .line 125
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 126
    .local v0, "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    sget-object v5, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "entry":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 130
    .local v1, "retVal":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    if-nez v1, :cond_1

    .line 131
    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    .line 133
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_MINI_BUTTON_ACTION_ENUM;->comment:Ljava/lang/String;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
