.class public Lcom/parrot/freeflight/media/model/FileOperation;
.super Lcom/parrot/freeflight/util/observer/SuspendableObservable;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/model/FileOperation$IProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/util/observer/SuspendableObservable",
        "<",
        "Lcom/parrot/freeflight/media/model/FileOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private closed:Z

.field protected final mFileOpProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private progress:F

.field private succeeded:Z


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/media/model/FileOperation$IProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/parrot/freeflight/media/model/FileOperation$IProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parrot/freeflight/util/observer/SuspendableObservable;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/parrot/freeflight/media/model/FileOperation;->mFileOpProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;

    .line 20
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/model/FileOperation;->closed:Z

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/media/model/FileOperation;->closed:Z

    .line 28
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/FileOperation;->doClose()V

    .line 29
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/FileOperation;->notifyChange()V

    .line 30
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/model/FileOperation;->clearObservers()V

    .line 32
    :cond_0
    return-void
.end method

.method protected doClose()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/media/model/FileOperation;->mFileOpProvider:Lcom/parrot/freeflight/media/model/FileOperation$IProvider;

    invoke-interface {v0, p0}, Lcom/parrot/freeflight/media/model/FileOperation$IProvider;->clearOperation(Lcom/parrot/freeflight/media/model/FileOperation;)V

    .line 40
    return-void
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/parrot/freeflight/media/model/FileOperation;->progress:F

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/model/FileOperation;->closed:Z

    return v0
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/parrot/freeflight/media/model/FileOperation;->succeeded:Z

    return v0
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "newProgress"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/parrot/freeflight/media/model/FileOperation;->progress:F

    .line 57
    return-void
.end method

.method public setSucceeded(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/parrot/freeflight/media/model/FileOperation;->succeeded:Z

    .line 65
    return-void
.end method
