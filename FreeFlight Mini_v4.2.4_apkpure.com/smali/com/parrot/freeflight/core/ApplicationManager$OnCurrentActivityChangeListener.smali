.class public interface abstract Lcom/parrot/freeflight/core/ApplicationManager$OnCurrentActivityChangeListener;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCurrentActivityChangeListener"
.end annotation


# virtual methods
.method public abstract onCurrentActivityChange(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
