.class public interface abstract Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;
.super Ljava/lang/Object;
.source "CustomSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/view/CustomSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSpinnerOpenStateChangedListener"
.end annotation


# virtual methods
.method public abstract onOpenStateChanged(Landroid/widget/Spinner;Z)V
    .param p1    # Landroid/widget/Spinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
