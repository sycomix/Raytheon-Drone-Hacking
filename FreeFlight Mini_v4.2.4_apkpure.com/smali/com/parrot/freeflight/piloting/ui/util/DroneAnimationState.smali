.class public Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;
.super Ljava/lang/Object;
.source "DroneAnimationState.java"


# instance fields
.field private final mAnimationStates:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->mAnimationStates:Landroid/util/SparseArray;

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->mAnimationStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 38
    return-void
.end method

.method public getAnimationState(I)I
    .locals 1
    .param p1, "animation"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->mAnimationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 29
    const/4 v0, 0x2

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->mAnimationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public update(II)Z
    .locals 2
    .param p1, "animation"    # I
    .param p2, "state"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->mAnimationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->mAnimationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->mAnimationStates:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
