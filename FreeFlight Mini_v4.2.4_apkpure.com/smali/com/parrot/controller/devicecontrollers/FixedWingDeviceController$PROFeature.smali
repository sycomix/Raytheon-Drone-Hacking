.class public final enum Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;
.super Ljava/lang/Enum;
.source "FixedWingDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

.field public static final enum FEATURE_720P_STREAM:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

.field public static final enum FEATURE_NO_SK_HUD:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;


# instance fields
.field private final shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1075
    new-instance v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    const-string v1, "FEATURE_720P_STREAM"

    invoke-direct {v0, v1, v2, v2}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->FEATURE_720P_STREAM:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    .line 1076
    new-instance v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    const-string v1, "FEATURE_NO_SK_HUD"

    invoke-direct {v0, v1, v3, v3}, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->FEATURE_NO_SK_HUD:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    .line 1073
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->FEATURE_720P_STREAM:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->FEATURE_NO_SK_HUD:Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->$VALUES:[Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1081
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1082
    iput p3, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->shift:I

    .line 1083
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1073
    const-class v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    return-object v0
.end method

.method public static values()[Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;
    .locals 1

    .prologue
    .line 1073
    sget-object v0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->$VALUES:[Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    invoke-virtual {v0}, [Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;

    return-object v0
.end method


# virtual methods
.method public getMask()J
    .locals 3

    .prologue
    .line 1086
    const-wide/16 v0, 0x1

    iget v2, p0, Lcom/parrot/controller/devicecontrollers/FixedWingDeviceController$PROFeature;->shift:I

    shl-long/2addr v0, v2

    return-wide v0
.end method
