.class public interface abstract Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;
.super Ljava/lang/Object;
.source "DroneDiscoveringController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IListener"
.end annotation


# virtual methods
.method public abstract onStateChange(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;)V
    .param p1    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
