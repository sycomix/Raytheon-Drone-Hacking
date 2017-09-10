.class Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;
.super Ljava/lang/Object;
.source "CommandMapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatingActionRunnable"
.end annotation


# static fields
.field private static final INTERVAL_DECREMENT_MS:I = 0x5a

.field private static final MIN_REPEATING_INTERVAL_MS:I = 0x1e


# instance fields
.field private final mAction:Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMainHandlerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatingIntervalInMs:I

.field private mShouldAccelerate:Z


# direct methods
.method public constructor <init>(IZLandroid/os/Handler;Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;)V
    .locals 1
    .param p1, "initialRepeatingIntervalInMs"    # I
    .param p2, "shouldAccelerate"    # Z
    .param p3, "mainHandler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "action"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "axis"    # Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p4, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mAction:Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 904
    iput-object p5, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    .line 905
    iput-boolean p2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mShouldAccelerate:Z

    .line 906
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mMainHandlerRef:Ljava/lang/ref/WeakReference;

    .line 907
    iput p1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mRepeatingIntervalInMs:I

    .line 908
    return-void
.end method


# virtual methods
.method public decrementRepeatingInterval()V
    .locals 3

    .prologue
    .line 921
    iget v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mRepeatingIntervalInMs:I

    add-int/lit8 v0, v1, -0x5a

    .line 922
    .local v0, "newRepeatingInterval":I
    const/16 v1, 0x1e

    const v2, 0x7fffffff

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mRepeatingIntervalInMs:I

    .line 923
    return-void
.end method

.method public getRepeatingIntervalInMs()I
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mRepeatingIntervalInMs:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 912
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mAction:Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mAxis:Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/mapper/GamePadInputState$Axis;->getTransformedValue()F

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->execute(F)V

    .line 913
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mMainHandlerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 914
    .local v0, "mainHandler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 915
    iget-boolean v1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->mShouldAccelerate:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->decrementRepeatingInterval()V

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$RepeatingActionRunnable;->getRepeatingIntervalInMs()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 918
    :cond_1
    return-void

    .line 912
    .end local v0    # "mainHandler":Landroid/os/Handler;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
