.class Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;
.super Ljava/lang/Object;
.source "UsbLightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$200(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/LightAccessory;->setIntensity(I)V

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$302(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;J)J

    .line 279
    :cond_0
    return-void
.end method
