.class interface abstract Lcom/parrot/freeflight/core/academy/RunCollection$IRunChecker;
.super Ljava/lang/Object;
.source "RunCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/RunCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IRunChecker"
.end annotation


# virtual methods
.method public abstract checkRun(Lcom/parrot/freeflight/core/academy/RunInformation;)Z
    .param p1    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
