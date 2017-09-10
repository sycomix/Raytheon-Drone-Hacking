.class public interface abstract Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MyFlightsDetailsMediaFragmentListener;
.super Ljava/lang/Object;
.source "MyFlightsDetailsMediasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MyFlightsDetailsMediaFragmentListener"
.end annotation


# virtual methods
.method public abstract onMediaClicked(Ljava/util/ArrayList;I)V
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/core/academy/MediaInfos;",
            ">;I)V"
        }
    .end annotation
.end method
