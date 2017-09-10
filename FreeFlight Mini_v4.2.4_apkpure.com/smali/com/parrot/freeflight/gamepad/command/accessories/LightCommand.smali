.class public abstract enum Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
.super Ljava/lang/Enum;
.source "LightCommand.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/command/AccessoryCommand;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;",
        ">;",
        "Lcom/parrot/freeflight/gamepad/command/AccessoryCommand",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

.field public static final enum CMD_BLINK:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

.field public static final enum CMD_LIGHT_ON_OFF:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

.field public static final enum CMD_TOGGLE:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

.field public static final enum CMD_WAVE:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

.field private static final MAX_EVO_LIGHT_INTENSITY_VALUE:I = 0xff

.field private static final MAX_USB_ACCESSORY_LIGHT_INTENSITY_VALUE:I = 0x64

.field private static final MIN_LIGHT_INTENSITY_VALUE:I


# instance fields
.field private final mId:I

.field private final mResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$1;

    const-string v1, "CMD_LIGHT_ON_OFF"

    const/16 v2, 0x2bc

    const v3, 0x7f080233

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_LIGHT_ON_OFF:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    .line 41
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$2;

    const-string v1, "CMD_BLINK"

    const/16 v2, 0x2bd

    const v3, 0x7f080232

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$2;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_BLINK:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    .line 65
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$3;

    const-string v1, "CMD_WAVE"

    const/16 v2, 0x2be

    const v3, 0x7f080235

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$3;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_WAVE:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    .line 89
    new-instance v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$4;

    const-string v1, "CMD_TOGGLE"

    const/16 v2, 0x2bf

    const v3, 0x7f080234

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$4;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_TOGGLE:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_LIGHT_ON_OFF:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_BLINK:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_WAVE:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->CMD_TOGGLE:Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    aput-object v1, v0, v7

    sput-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "id"    # I
    .param p4, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->mId:I

    .line 139
    iput p4, p0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->mResId:I

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/parrot/freeflight/gamepad/command/accessories/LightCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand$1;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/LightAccessory;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->getCurrentLightAccessory(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentLightAccessory(Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/LightAccessory;
    .locals 5
    .param p0, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getLightAccessories()Ljava/util/Map;

    move-result-object v1

    .line 187
    .local v1, "lightAccessories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parrot/freeflight/core/model/LightAccessory;>;"
    const/4 v0, 0x0

    .line 188
    .local v0, "currentAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/model/LightAccessory;

    .line 189
    .local v2, "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    if-eqz v2, :cond_0

    .line 190
    move-object v0, v2

    .line 194
    .end local v2    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->$VALUES:[Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;

    return-object v0
.end method


# virtual methods
.method public getAccessoryType()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->mId:I

    return v0
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getResId()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 149
    iget v0, p0, Lcom/parrot/freeflight/gamepad/command/accessories/LightCommand;->mResId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public isAnalog()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public needRepetition()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAccelerate()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method
