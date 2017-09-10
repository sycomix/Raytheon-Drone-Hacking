.class public final Lcom/parrot/freeflight/util/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeSharedElementTextSizeTransition(Landroid/content/Context;I)Landroid/transition/Transition;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "targetId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 14
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 15
    .local v1, "set":Landroid/transition/TransitionSet;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 16
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    .line 17
    .local v0, "changeBounds":Landroid/transition/Transition;
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 18
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 19
    new-instance v2, Lcom/parrot/freeflight/util/TextSizeTransition;

    invoke-direct {v2}, Lcom/parrot/freeflight/util/TextSizeTransition;-><init>()V

    .line 20
    .local v2, "textSize":Landroid/transition/Transition;
    invoke-virtual {v2, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 21
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 22
    return-object v1
.end method
