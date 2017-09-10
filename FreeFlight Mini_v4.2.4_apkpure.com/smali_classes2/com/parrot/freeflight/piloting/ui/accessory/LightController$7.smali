.class Lcom/parrot/freeflight/piloting/ui/accessory/LightController$7;
.super Ljava/lang/Object;
.source "LightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/accessory/LightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$100(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$500(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->setLightsIntensity(I)V

    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$7;->this$0:Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->access$602(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;J)J

    .line 272
    return-void
.end method
