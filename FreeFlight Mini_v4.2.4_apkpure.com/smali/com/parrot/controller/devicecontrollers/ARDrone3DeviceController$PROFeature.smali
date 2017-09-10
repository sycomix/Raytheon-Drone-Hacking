.class public final enum Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;
.super Ljava/lang/Enum;
.source "ARDrone3DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

.field public static final enum FEATURE_720P_STREAM:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

.field public static final enum FEATURE_NO_SK_HUD:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;


# instance fields
.field private final shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1086
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    const-string v1, "FEATURE_720P_STREAM"

    invoke-direct {v0, v1, v2, v2}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->FEATURE_720P_STREAM:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    .line 1087
    new-instance v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    const-string v1, "FEATURE_NO_SK_HUD"

    invoke-direct {v0, v1, v3, v3}, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->FEATURE_NO_SK_HUD:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    .line 1084
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->FEATURE_720P_STREAM:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->FEATURE_NO_SK_HUD:Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->$VALUES:[Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

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
    .line 1092
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1093
    iput p3, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->shift:I

    .line 1094
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1084
    const-class v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    return-object v0
.end method

.method public static values()[Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;
    .locals 1

    .prologue
    .line 1084
    sget-object v0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->$VALUES:[Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    invoke-virtual {v0}, [Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;

    return-object v0
.end method


# virtual methods
.method public getMask()J
    .locals 3

    .prologue
    .line 1097
    const-wide/16 v0, 0x1

    iget v2, p0, Lcom/parrot/controller/devicecontrollers/ARDrone3DeviceController$PROFeature;->shift:I

    shl-long/2addr v0, v2

    return-wide v0
.end method
