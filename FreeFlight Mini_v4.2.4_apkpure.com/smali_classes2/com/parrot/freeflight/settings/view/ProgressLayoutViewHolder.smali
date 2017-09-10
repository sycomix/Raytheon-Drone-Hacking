.class public Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "ProgressLayoutViewHolder.java"


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
        "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field private mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field public final mInterpretedValueTextView:Landroid/widget/TextView;

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

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
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    const v1, 0x7f0f01af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0f01eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0f029f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0f02a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/widget/Slider;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    .line 48
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setFocusable(Z)V

    .line 49
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setClickable(Z)V

    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v2, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/Slider;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Lcom/parrot/freeflight/settings/widget/Slider;)V

    .line 110
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mResources:Landroid/content/res/Resources;

    .line 117
    new-instance v1, Lcom/parrot/freeflight/util/ui/MetricsServant;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;
    .param p1, "x1"    # D
    .param p3, "x2"    # Lcom/parrot/freeflight/util/ui/Unit;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Z

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->setDisplayedValue(DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)D
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->getValueToSend()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->shouldSendValue()Z

    move-result v0

    return v0
.end method

.method private getValueToSend()D
    .locals 2

    .prologue
    .line 200
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getValueFromSlider(I)D

    move-result-wide v0

    .line 203
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setDisplayedValue(DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "value"    # D
    .param p3, "unit"    # Lcom/parrot/freeflight/util/ui/Unit;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "unitAsString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "isDecimal"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    if-nez p3, :cond_2

    .line 156
    if-eqz p5, :cond_1

    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v7}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "displayedValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    return-void

    .line 159
    .end local v0    # "displayedValue":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.0f %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, v6}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayedValue":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v0    # "displayedValue":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v1, p1, p2, p3, p5}, Lcom/parrot/freeflight/util/ui/MetricsServant;->format(DLcom/parrot/freeflight/util/ui/Unit;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayedValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private setItemEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 208
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/settings/widget/Slider;->setEnabled(Z)V

    .line 212
    return-void
.end method

.method private shouldSendValue()Z
    .locals 8

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    if-eqz v6, :cond_1

    .line 191
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    iget-object v7, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v7}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getValueFromSlider(I)D

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v0

    .line 192
    .local v0, "progressBarValue":D
    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    invoke-virtual {v6}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v6

    invoke-static {v6, v7, v4}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v2

    .line 193
    .local v2, "savedValue":D
    cmpl-double v6, v0, v2

    if-eqz v6, :cond_0

    .line 195
    .end local v0    # "progressBarValue":D
    .end local v2    # "savedValue":D
    :goto_0
    return v4

    .restart local v0    # "progressBarValue":D
    .restart local v2    # "savedValue":D
    :cond_0
    move v4, v5

    .line 193
    goto :goto_0

    .end local v0    # "progressBarValue":D
    .end local v2    # "savedValue":D
    :cond_1
    move v4, v5

    .line 195
    goto :goto_0
.end method


# virtual methods
.method protected handleOnKey(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    const/16 v3, 0x15

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 172
    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x60

    if-ne p1, v2, :cond_2

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/widget/Slider;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setSelected(Z)V

    .line 185
    :goto_0
    return v1

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/widget/Slider;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    if-eqz v2, :cond_5

    if-eq p1, v3, :cond_3

    const/16 v2, 0x16

    if-ne p1, v2, :cond_5

    .line 177
    :cond_3
    if-ne p1, v3, :cond_4

    .line 178
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getGamePadStep()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/widget/Slider;->getMax()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    goto :goto_0

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/widget/Slider;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getGamePadStep()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/widget/Slider;->getMax()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    goto :goto_0

    :cond_5
    move v1, v0

    .line 185
    goto :goto_0
.end method

.method public update(Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;)V
    .locals 20
    .param p1    # Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    .local p1, "boundedStateSettingsValue":Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry<TT;TU;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getValue()Lcom/parrot/freeflight/util/DoubleBoundedState;

    move-result-object v9

    .line 124
    .local v9, "state":Lcom/parrot/freeflight/util/DoubleBoundedState;
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMaxBound()D

    move-result-wide v10

    .line 125
    .local v10, "max":D
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getMinBound()D

    move-result-wide v12

    .line 126
    .local v12, "min":D
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->getCurrentValue()D

    move-result-wide v4

    .line 127
    .local v4, "current":D
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getStep()D

    move-result-wide v14

    .line 128
    .local v14, "step":D
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getInterpretedValue()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "interpretedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v9}, Lcom/parrot/freeflight/util/DoubleBoundedState;->isSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->setItemEnabled(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    sub-double v6, v10, v12

    div-double/2addr v6, v14

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/parrot/freeflight/util/Numbers;->round(DI)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setMax(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mBoundedStateSettingsValue:Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    invoke-virtual {v6}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getSliderValueFromValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    .line 135
    if-eqz v2, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getInterpretedValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getUnit()Lcom/parrot/freeflight/util/ui/Unit;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->getUnitAsString()Ljava/lang/String;

    move-result-object v7

    double-to-int v3, v14

    int-to-double v0, v3

    move-wide/from16 v18, v0

    cmpl-double v3, v14, v18

    if-eqz v3, :cond_1

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->setDisplayedValue(DLcom/parrot/freeflight/util/ui/Unit;Ljava/lang/String;Z)V

    .line 149
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;->isEditable()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setEnabled(Z)V

    .line 150
    return-void

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 143
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->setItemEnabled(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mInterpretedValueTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f080444

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "unusedString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry;)V

    return-void
.end method
