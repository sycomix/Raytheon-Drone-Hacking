.class Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;
.super Ljava/lang/Object;
.source "UsbLightController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;-><init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
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
    .line 113
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 8
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const-wide/16 v6, 0x64

    .line 117
    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$200(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$300(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/LightAccessory;->setIntensity(I)V

    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$302(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;J)J

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$200(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
