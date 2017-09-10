.class public interface abstract Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux$Listener;
.super Ljava/lang/Object;
.source "ARDiscoveryMux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onDeviceRemoved()V
.end method
