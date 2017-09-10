.class public interface abstract Lcom/csr/uenergy/ota/model/IOtaMessageListener;
.super Ljava/lang/Object;
.source "IOtaMessageListener.java"


# virtual methods
.method public abstract onApplicationOnChipUpdate(Ljava/lang/String;)V
.end method

.method public abstract onApplicationVersionUpdate(Ljava/lang/String;)V
.end method

.method public abstract onBondStateUpdate(I)V
.end method

.method public abstract onBootloaderVersionUpdate(Ljava/lang/String;)V
.end method

.method public abstract onBtAddressUpdate(Ljava/lang/String;)V
.end method

.method public abstract onConnectionStateUpdate(I)V
.end method

.method public abstract onCrystalTrimUpdate(I)V
.end method

.method public abstract onCsBlockData([B)V
.end method

.method public abstract onCsrOtaVersionUpdate(Ljava/lang/String;)V
.end method

.method public abstract onEncryptionRootUpdate(Ljava/lang/String;)V
.end method

.method public abstract onIdentityRootUpdate(Ljava/lang/String;)V
.end method

.method public abstract onOtaMessageUpdate(I)V
.end method

.method public abstract onOtaProgressUpdate(III)V
.end method

.method public abstract onOtaStateUpdate(Lcom/csr/uenergy/ota/model/State$OtaState;)V
.end method

.method public abstract onOtaTransferControlStatus(S)V
.end method

.method public abstract onOtauEnabled(Z)V
.end method

.method public abstract onOtauStarted()V
.end method

.method public abstract onSoftwareVersionUpdate(Ljava/lang/String;)V
.end method
