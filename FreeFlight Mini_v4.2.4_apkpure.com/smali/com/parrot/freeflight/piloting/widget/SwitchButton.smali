.class public Lcom/parrot/freeflight/piloting/widget/SwitchButton;
.super Landroid/widget/RelativeLayout;
.source "SwitchButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;,
        Lcom/parrot/freeflight/piloting/widget/SwitchButton$Direction;
    }
.end annotation


# static fields
.field private static final ANIM_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIM_PROPERTY_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final DEFAULT:I = 0x2

.field private static final DEFAULT_NEUTRAL_RATIO:F = 0.8f

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field private static final SLIDER_OPEN_ANIMATION_TIME:I = 0x15e

.field private static final SLIDER_OPEN_ANIMATION_TIME_DELAY:I = 0x96

.field private static final SLIDER_RESET_ANIMATION_TIME:I = 0x12c

.field private static final SLIDER_RESET_ANIMATION_TIME_DELAY:I = 0x32


# instance fields
.field private mArrowsTranslation:F

.field private mBackgroundView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHorizontalLimit:F

.field private mInitialButtonXPosition:F

.field private mLastDirection:I

.field private mLeftArrowImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNeutralAreaRatio:F

.field private mRightArrowImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSwitchButtonImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSwitchButtonLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSwitchButtonLeftDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSwitchButtonRightDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method private animateViewAlpha(Landroid/view/View;FIJ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "alpha"    # F
    .param p3, "duration"    # I
    .param p4, "delay"    # J

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p3

    .line 170
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 173
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 248
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 249
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    .local v1, "rightArrowDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 251
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    .local v0, "leftArrowDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 255
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    .end local v0    # "leftArrowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "rightArrowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400aa

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    const v5, 0x7f0f02a4

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mBackgroundView:Landroid/view/View;

    .line 88
    const v5, 0x7f0f02a5

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonLayout:Landroid/widget/LinearLayout;

    .line 89
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    const v5, 0x7f0f02a6

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    .line 92
    const v5, 0x7f0f02a8

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    .line 93
    const v5, 0x7f0f02a7

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    .line 95
    if-eqz p2, :cond_5

    .line 96
    sget-object v5, Lcom/parrot/freeflight/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    .local v1, "customAttributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 100
    .local v0, "attr":I
    if-nez v0, :cond_1

    .line 101
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonRightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 104
    :cond_2
    if-ne v0, v7, :cond_3

    .line 105
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 106
    .local v3, "leftArrowDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 107
    .end local v3    # "leftArrowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 108
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 109
    .local v4, "rightArrowDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 112
    .end local v0    # "attr":I
    .end local v4    # "rightArrowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .end local v1    # "customAttributes":Landroid/content/res/TypedArray;
    .end local v2    # "i":I
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->changeSwitchButtonImage(I)V

    .line 116
    const v5, 0x3f4ccccd    # 0.8f

    iput v5, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mNeutralAreaRatio:F

    .line 117
    iput v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLastDirection:I

    .line 119
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method private startArrowsAnimations(Z)V
    .locals 12
    .param p1, "opening"    # Z

    .prologue
    .line 139
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 140
    .local v2, "leftArrowAnimatorSet":Landroid/animation/AnimatorSet;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 142
    .local v5, "rightArrowAnimatorSet":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_0

    .line 143
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    const-string/jumbo v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mArrowsTranslation:F

    neg-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 144
    .local v3, "leftTranslateAnimator":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 145
    .local v1, "leftAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x15e

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 146
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 148
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    const-string/jumbo v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mArrowsTranslation:F

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 149
    .local v6, "rightTranslateAnimator":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 150
    .local v4, "rightAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x15e

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 163
    .end local v1    # "leftAlphaAnimator":Landroid/animation/ObjectAnimator;
    :goto_0
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 164
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 165
    return-void

    .line 153
    .end local v3    # "leftTranslateAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "rightAlphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v6    # "rightTranslateAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    const-string/jumbo v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 154
    .restart local v3    # "leftTranslateAnimator":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLeftArrowImage:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 155
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 158
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    const-string/jumbo v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 159
    .restart local v6    # "rightTranslateAnimator":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mRightArrowImage:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 160
    .restart local v4    # "rightAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 161
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 144
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 149
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 154
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 159
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startSliderClosingAnimation()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->startArrowsAnimations(Z)V

    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mBackgroundView:Landroid/view/View;

    const/16 v3, 0x12c

    const-wide/16 v4, 0x32

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->animateViewAlpha(Landroid/view/View;FIJ)V

    .line 184
    return-void
.end method

.method private startSliderOpeningAnimation()V
    .locals 6

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->startArrowsAnimations(Z)V

    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mBackgroundView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x15e

    const-wide/16 v4, 0x96

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->animateViewAlpha(Landroid/view/View;FIJ)V

    .line 178
    return-void
.end method


# virtual methods
.method public changeSwitchButtonImage(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public clearButtonImageTint()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 188
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonLayout:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_0

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return v4

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mArrowsTranslation:F

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mInitialButtonXPosition:F

    .line 193
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mHorizontalLimit:F

    .line 195
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->startSliderOpeningAnimation()V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mInitialButtonXPosition:F

    sub-float v0, v2, v3

    .line 200
    .local v0, "relativeMoveX":F
    move v1, v0

    .line 201
    .local v1, "translationX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mHorizontalLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 202
    cmpg-float v2, v0, v5

    if-gez v2, :cond_2

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mHorizontalLimit:F

    neg-float v1, v2

    .line 205
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 207
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mHorizontalLimit:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mNeutralAreaRatio:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 208
    cmpl-float v2, v1, v5

    if-lez v2, :cond_3

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLastDirection:I

    if-eq v2, v4, :cond_3

    .line 209
    iput v4, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLastDirection:I

    .line 210
    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->changeSwitchButtonImage(I)V

    .line 211
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mListener:Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mListener:Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;

    invoke-interface {v2, p0, v4}, Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;->onSwitchValueChanged(Lcom/parrot/freeflight/piloting/widget/SwitchButton;I)V

    goto :goto_0

    .line 202
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mHorizontalLimit:F

    goto :goto_1

    .line 214
    :cond_3
    cmpg-float v2, v1, v5

    if-gez v2, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLastDirection:I

    if-eqz v2, :cond_0

    .line 215
    iput v6, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLastDirection:I

    .line 216
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->changeSwitchButtonImage(I)V

    .line 217
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mListener:Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mListener:Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;

    invoke-interface {v2, p0, v6}, Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;->onSwitchValueChanged(Lcom/parrot/freeflight/piloting/widget/SwitchButton;I)V

    goto :goto_0

    .line 222
    :cond_4
    const/4 v2, 0x2

    iput v2, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mLastDirection:I

    goto/16 :goto_0

    .line 228
    .end local v0    # "relativeMoveX":F
    .end local v1    # "translationX":F
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->startSliderClosingAnimation()V

    goto/16 :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setButtonImageTint(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mSwitchButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 132
    return-void
.end method

.method public setNeutralAreaRatio(F)V
    .locals 0
    .param p1, "newNeutralAreaRatio"    # F

    .prologue
    .line 236
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mNeutralAreaRatio:F

    .line 237
    return-void
.end method

.method public setOnSwitchValueChangedListener(Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 240
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/SwitchButton;->mListener:Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;

    .line 241
    return-void
.end method
