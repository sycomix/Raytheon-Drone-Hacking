.class public interface abstract Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;
.super Ljava/lang/Object;
.source "MdnsSdMin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onServiceAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
.end method

.method public abstract onServiceRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method
