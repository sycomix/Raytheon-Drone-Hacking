.class interface abstract Lcom/parrot/freeflight3/FrameResolver$Listener;
.super Ljava/lang/Object;
.source "FrameResolver.java"

# interfaces
.implements Lcom/parrot/freeflight3/OnRemoteInputListener;
.implements Lcom/parrot/freeflight3/OnRemoteBatteryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/FrameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFramePresenceChange(Z)V
.end method
