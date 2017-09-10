.class public Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;
.super Ljava/lang/Object;
.source "SettingsAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 129
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularRevealCompat(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method private static createCircularRevealCompat(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "initialRadius"    # F
    .param p4, "finalRadius"    # F

    .prologue
    .line 99
    instance-of v2, p0, Lcom/parrot/freeflight/util/ui/ICircularRevealable;

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Trying to animate a view that does not implement ICircularRevealedCompatible"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, p0

    .line 102
    check-cast v2, Lcom/parrot/freeflight/util/ui/ICircularRevealable;

    invoke-interface {v2}, Lcom/parrot/freeflight/util/ui/ICircularRevealable;->getPath()Landroid/graphics/Path;

    move-result-object v1

    .line 103
    .local v1, "path":Landroid/graphics/Path;
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v3, 0x1

    aput p4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 104
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;

    invoke-direct {v2, v1, p1, p2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;-><init>(Landroid/graphics/Path;IILandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    return-object v0
.end method

.method public static hideSettings(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8
    .param p0, "settingsView"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "endAction"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$2;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getWidth()I

    move-result v5

    .line 71
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v3

    .line 72
    .local v3, "height":I
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 75
    .local v4, "initialRadius":I
    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 77
    .local v1, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 83
    .local v2, "cy":I
    :goto_1
    int-to-float v6, v4

    const/4 v7, 0x0

    invoke-static {p0, v1, v2, v6, v7}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 84
    .local v0, "anim":Landroid/animation/Animator;
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;

    invoke-direct {v6, p0, p2}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 79
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    :cond_2
    div-int/lit8 v1, v5, 0x2

    .line 80
    .restart local v1    # "cx":I
    div-int/lit8 v2, v3, 0x2

    .restart local v2    # "cy":I
    goto :goto_1
.end method

.method public static revealSettings(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 16
    .param p0    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "settingsParentView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(TT;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "TU;",
            "Landroid/view/View;",
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
            "<TT;TU;>;",
            "Landroid/view/View;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p2, "remoteControllerModel":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    .local p4, "settingsView":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;>;"
    if-eqz p4, :cond_0

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->show(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 28
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v13, v2

    .line 29
    .local v13, "height":F
    :goto_0
    neg-float v2, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->setTranslationY(F)V

    .line 30
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58
    .end local v13    # "height":F
    :cond_0
    :goto_1
    return-void

    .line 28
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v2

    int-to-float v13, v2

    goto :goto_0

    .line 32
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 33
    .local v15, "width":I
    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 34
    .local v13, "height":I
    :goto_3
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 37
    .local v12, "finalRadius":I
    if-eqz p5, :cond_5

    .line 38
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v10, v2, v3

    .line 39
    .local v10, "cx":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    .line 40
    .local v11, "cy":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 47
    .local v14, "startingRadius":I
    :goto_4
    int-to-float v2, v14

    int-to-float v3, v12

    move-object/from16 v0, p4

    invoke-static {v0, v10, v11, v2, v3}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v9

    .line 48
    .local v9, "anim":Landroid/animation/Animator;
    const-wide/16 v2, 0x258

    invoke-virtual {v9, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 49
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    invoke-virtual {v9, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 32
    .end local v9    # "anim":Landroid/animation/Animator;
    .end local v10    # "cx":I
    .end local v11    # "cy":I
    .end local v12    # "finalRadius":I
    .end local v13    # "height":I
    .end local v14    # "startingRadius":I
    .end local v15    # "width":I
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getWidth()I

    move-result v15

    goto :goto_2

    .line 33
    .restart local v15    # "width":I
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v13

    goto :goto_3

    .line 42
    .restart local v12    # "finalRadius":I
    .restart local v13    # "height":I
    :cond_5
    div-int/lit8 v10, v15, 0x2

    .line 43
    .restart local v10    # "cx":I
    div-int/lit8 v11, v13, 0x2

    .line 44
    .restart local v11    # "cy":I
    const/4 v14, 0x0

    .restart local v14    # "startingRadius":I
    goto :goto_4
.end method
