.class public interface abstract Lcom/parrot/freeflight/piloting/motion/MotionManager$MotionManagerListener;
.super Ljava/lang/Object;
.source "MotionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/motion/MotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionManagerListener"
.end annotation


# virtual methods
.method public abstract onMotionManagerHeadingChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
.end method

.method public abstract onMotionManagerHorizonChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
.end method

.method public abstract onMotionManagerPitchChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
.end method

.method public abstract onMotionManagerRollChange(Lcom/parrot/freeflight/piloting/motion/MotionManager;F)V
.end method

.method public abstract onMotionManagerShakeDetection(Lcom/parrot/freeflight/piloting/motion/MotionManager;)V
.end method
