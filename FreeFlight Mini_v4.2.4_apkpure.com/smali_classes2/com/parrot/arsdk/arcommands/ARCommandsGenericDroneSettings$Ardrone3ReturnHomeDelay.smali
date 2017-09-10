.class Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;
.super Ljava/lang/Object;
.source "ARCommandsGenericDroneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ardrone3ReturnHomeDelay"
.end annotation


# instance fields
.field public delay:S

.field public isSet:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/parrot/arsdk/arcommands/ARCommandsGenericDroneSettings$Ardrone3ReturnHomeDelay;-><init>()V

    return-void
.end method
