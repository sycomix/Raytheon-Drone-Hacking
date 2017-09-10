.class Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;
.super Ljava/lang/Object;
.source "ARCommandsGenericDroneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ardrone3VideoStabilizationMode"
.end annotation


# instance fields
.field public isSet:I

.field public mode:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PICTURESETTINGS_VIDEOSTABILIZATIONMODE_MODE_ENUM;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3VideoStabilizationMode;-><init>()V

    return-void
.end method
