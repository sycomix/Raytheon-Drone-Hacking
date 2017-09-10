.class public abstract Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;
.super Ljava/lang/Object;
.source "ARMediaRecordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;,
        Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;,
        Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;
    }
.end annotation


# instance fields
.field private delegateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private reason:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

.field private state:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->delegateList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addDelegate(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->getDelegates()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->delegateList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public clearDelegates()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->delegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public getDelegates()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "delegates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;>;"
    iget-object v3, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->delegateList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 94
    .local v2, "weakRefDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 95
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v2    # "weakRefDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;>;"
    :cond_1
    return-object v1
.end method

.method public getReason()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->reason:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    return-object v0
.end method

.method public getState()Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->state:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    return-object v0
.end method

.method public removeFromDelegates(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;)Z
    .locals 5
    .param p1, "delegate"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, "removed":Z
    iget-object v3, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->delegateList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 109
    .local v2, "weakRefDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 110
    .local v0, "refDelegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-ne v0, p1, :cond_0

    .line 112
    iget-object v3, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->delegateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    const/4 v1, 0x1

    .line 118
    .end local v0    # "refDelegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v2    # "weakRefDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;>;"
    :cond_1
    return v1
.end method

.method protected setReason(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;)V
    .locals 0
    .param p1, "reason"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->reason:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIACONTROLLER_ERROR;

    .line 87
    return-void
.end method

.method protected setState(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V
    .locals 4
    .param p1, "state"    # Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->state:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    .line 60
    iget-object v2, p0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;->delegateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 62
    .local v1, "weakRefDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;

    .line 63
    .local v0, "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0, p1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;->onARMediaRecordControllerStateChange(Lcom/parrot/controller/recordcontrollers/ARMediaRecordController;Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;)V

    goto :goto_0

    .line 68
    .end local v0    # "delegate":Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;
    .end local v1    # "weakRefDelegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$ARMediaRecordControllerDelegate;>;"
    :cond_1
    return-void
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopRecording()V
.end method
