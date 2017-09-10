.class public interface abstract Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onChange(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .param p1    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
