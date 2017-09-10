.class public interface abstract Lcom/parrot/freeflight/media/model/MediaStoreError$IProvider;
.super Ljava/lang/Object;
.source "MediaStoreError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/model/MediaStoreError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProvider"
.end annotation


# virtual methods
.method public abstract unregisterErrorObserver(Lcom/parrot/freeflight/util/observer/IObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/util/observer/IObserver",
            "<",
            "Lcom/parrot/freeflight/media/model/MediaStoreError;",
            ">;)V"
        }
    .end annotation
.end method
