.class public Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "HydrofoilProgressBarViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field public final mInterpretedValueTextView:Landroid/widget/TextView;

.field private mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field public final mRootLayout:Landroid/widget/LinearLayout;

.field public final mSettingsNameTextView:Landroid/widget/TextView;

.field public final mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

.field public final mValueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    const v1, 0x7f0f01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f0f01eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0f029f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f0f02a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/widget/Slider;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    .line 37
    const v1, 0x7f0f029e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mRootLayout:Landroid/widget/LinearLayout;

    .line 38
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Lcom/parrot/freeflight/settings/widget/Slider;)V

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)D
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->getValueToSend()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->shouldSendValue()Z

    move-result v0

    return v0
.end method

.method private getValueToSend()D
    .locals 6

    .prologue
    .line 142
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v0

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    .line 144
    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getStep()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 146
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setItemEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 151
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/settings/widget/Slider;->setEnabled(Z)V

    .line 155
    return-void
.end method

.method private shouldSendValue()Z
    .locals 10

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder<TT;TU;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    if-eqz v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v6}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    invoke-virtual {v8}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getStep()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7, v4}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v0

    .line 134
    .local v0, "progressBarValue":D
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v2

    .line 135
    .local v2, "savedValue":D
    cmpl-double v6, v0, v2

    if-eqz v6, :cond_0

    .line 137
    .end local v0    # "progressBarValue":D
    .end local v2    # "savedValue":D
    :goto_0
    return v4

    .restart local v0    # "progressBarValue":D
    .restart local v2    # "savedValue":D
    :cond_0
    move v4, v5

    .line 135
    goto :goto_0

    .end local v0    # "progressBarValue":D
    .end local v2    # "savedValue":D
    :cond_1
    move v4, v5

    .line 137
    goto :goto_0
.end method


# virtual methods
.method protected handleOnKey(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder<TT;TU;>;"
    const/16 v3, 0x15

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 120
    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x60

    if-ne p1, v2, :cond_2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/widget/Slider;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setSelected(Z)V

    .line 128
    :goto_0
    return v1

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/widget/Slider;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq p1, v3, :cond_3

    const/16 v2, 0x16

    if-ne p1, v2, :cond_5

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v0

    .line 128
    goto :goto_0
.end method

.method public update(Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;)V
    .locals 17
    .param p1    # Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder<TT;TU;>;"
    .local p1, "poolSizeStateSettingsValue":Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry<TT;TU;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mPoolSizeStateSettingsValue:Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v5

    .line 95
    .local v5, "state":Lcom/parrot/freeflight/util/DoubleBoundedState;
    invoke-virtual {v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v6

    .line 96
    .local v6, "max":D
    invoke-virtual {v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v8

    .line 97
    .local v8, "min":D
    invoke-virtual {v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v2

    .line 98
    .local v2, "current":D
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getStep()D

    move-result-wide v10

    .line 100
    .local v10, "step":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v5}, Lcom/parrot/freeflight/util/DoubleBoundedState;->isSettingEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 103
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->setItemEnabled(Z)V

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    sub-double v14, v6, v8

    div-double/2addr v14, v10

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/settings/widget/Slider;->setMax(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    sub-double v14, v2, v8

    div-double/2addr v14, v10

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v14

    double-to-int v14, v14

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;->getInterpretedValue()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "interpretedValue":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v4    # "interpretedValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->setItemEnabled(Z)V

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080444

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "unusedString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;, "Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;->update(Lcom/parrot/freeflight/piloting/ui/util/HydrofoilBoundedStateSettingsEntry;)V

    return-void
.end method
