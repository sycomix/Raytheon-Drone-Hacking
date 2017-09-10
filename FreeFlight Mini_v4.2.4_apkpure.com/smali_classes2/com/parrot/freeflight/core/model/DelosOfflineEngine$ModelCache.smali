.class Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;
.super Ljava/lang/Object;
.source "DelosOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelCache"
.end annotation


# instance fields
.field private final mCommands:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/core/model/DelosOfflineEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->mCommands:Landroid/util/SparseArray;

    .line 152
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->save(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 153
    return-void
.end method

.method private addCommand(Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;)V
    .locals 2
    .param p1, "valueRunnable"    # Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->mCommands:Landroid/util/SparseArray;

    iget v1, p1, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;->mType:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    return-void
.end method


# virtual methods
.method public reset(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 1
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->mCommands:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 182
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->save(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 183
    return-void
.end method

.method public restore()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 169
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->mCommands:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;

    .line 170
    .local v2, "setAccessoryCommand":Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-static {v4}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine;->access$000(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v0

    .line 171
    .local v0, "currentAccessory":I
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->mCommands:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 172
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v0, v4, :cond_0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_0

    .line 173
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;->execute()V

    .line 175
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->mCommands:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 176
    iget-object v4, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->mCommands:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;->execute()V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    return-void
.end method

.method public save(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 4
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetAccessory;-><init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;I)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->addCommand(Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;)V

    .line 157
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetCutOutState;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getCutOutState()Lcom/parrot/freeflight/util/ToggleState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/ToggleState;->getToggleState()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetCutOutState;-><init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;Z)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->addCommand(Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;)V

    .line 158
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxTilt;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxTiltState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxTilt;-><init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;F)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->addCommand(Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;)V

    .line 159
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxVerticalSpeed;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxVerticalSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxVerticalSpeed;-><init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;F)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->addCommand(Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;)V

    .line 160
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxRotationSpeed;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxRotationSpeedState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxRotationSpeed;-><init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;F)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->addCommand(Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;)V

    .line 161
    new-instance v0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxAltitude;

    iget-object v1, p0, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->this$0:Lcom/parrot/freeflight/core/model/DelosOfflineEngine;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getMaxAltitudeState()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$SetMaxAltitude;-><init>(Lcom/parrot/freeflight/core/model/DelosOfflineEngine;F)V

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ModelCache;->addCommand(Lcom/parrot/freeflight/core/model/DelosOfflineEngine$ValueRunnable;)V

    .line 162
    return-void
.end method
